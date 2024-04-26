import Fastify, { FastifyReply, FastifyRequest } from "fastify";
import { z } from "zod";
import {
  and,
  between,
  db,
  eq,
  notInArray,
  reservations,
  rooms,
} from "@repo/db";
import swagger from "@fastify/swagger";
import swaggerUi from "@fastify/swagger-ui";

const app = Fastify({
  logger: true,
});

await app.register(swagger, {});
app.register(swaggerUi, {
  routePrefix: "/documentation",
  uiConfig: {
    docExpansion: "full",
    deepLinking: false,
  },
  uiHooks: {
    onRequest: function (request, reply, next) {
      next();
    },
    preHandler: function (request, reply, next) {
      next();
    },
  },
  staticCSP: true,
  transformStaticCSP: (header) => header,
  transformSpecification: (swaggerObject, request, reply) => {
    return swaggerObject;
  },
  transformSpecificationClone: true,
});

const bodySchema = z.object({
  startDate: z.string().date(),
  endDate: z.string().date(),
  email: z.string().email().optional(),
});

const paramsSchema = z.object({
  roomId: z.string(),
});

app.post(
  "/reservation/:roomId",
  {
    schema: {
      body: {
        type: "object",
        properties: {
          startDate: {
            type: "string",
            description: "Data de check-in - YYYY-MM-DD",
          },
          endDate: {
            type: "string",
            description: "Data de check-out - YYYY-MM-DD",
          },
          email: {
            type: "string",
            description: "Email do usuário",
          },
        },
      },
    },
  },
  async (req: FastifyRequest, res: FastifyReply) => {
    const body = bodySchema.safeParse(req.body);
    const params = paramsSchema.safeParse(req.params);

    if (body.success !== true) {
      return res.status(422).send({
        errors: body.error.flatten(),
      });
    }

    if (params.success !== true) {
      return res.status(422).send({
        errors: params.error.flatten(),
      });
    }

    const { endDate, startDate, email } = body.data;
    const { roomId } = params.data;

    const [roomIsAvailable] = await db
      .select({
        id: rooms.id,
      })
      .from(rooms)
      .where(
        and(
          eq(rooms.id, roomId),
          notInArray(
            rooms.id,
            db
              .select({
                id: rooms.id,
              })
              .from(reservations)
              .innerJoin(
                rooms,
                and(
                  eq(rooms.id, reservations.roomId),
                  between(reservations.startDate, startDate, endDate),
                  between(reservations.endDate, startDate, endDate)
                )
              )
          )
        )
      )
      .groupBy(rooms.id);

    if (!roomIsAvailable) {
      return res.status(400).send({
        message: "Room is not avaiable in this date",
      });
    }

    await db.insert(reservations).values({
      endDate,
      startDate,
      roomId,
    });

    return res.send({
      message: "Reservation created",
    });
  }
);

app.listen({
  port: 3001,
  host: "0.0.0.0",
});
