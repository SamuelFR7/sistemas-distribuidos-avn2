import Fastify, { type FastifyRequest, type FastifyReply } from "fastify";
import { db, eq, reservations } from "@repo/db";
import { z } from "zod";
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

const paramsSchema = z.object({
  reservationId: z.string(),
});

app.patch(
  "/reservations/:reservationId/cancel",
  {
    schema: {
      response: {
        422: {
          description: "Validation error",
          type: "object",
          properties: {
            errors: {
              type: "string",
            },
          },
        },
        404: {
          description: "Not found",
          type: "object",
          properties: {
            message: {
              type: "string",
            },
          },
        },
        default: {
          description: "Success response",
          type: "object",
          properties: {
            message: {
              type: "string",
            },
          },
        },
      },
    },
  },
  async (req: FastifyRequest, res: FastifyReply) => {
    const params = paramsSchema.safeParse(req.params);

    if (params.success !== true) {
      return res.status(422).send({
        errors: params.error.flatten(),
      });
    }

    const { reservationId } = params.data;

    const reservation = await db.query.reservations.findFirst({
      where: (reservations, { eq, and, gt }) =>
        and(
          eq(reservations.id, reservationId),
          eq(reservations.canceled, false),
          gt(reservations.startDate, new Date().toDateString())
        ),
      columns: {
        id: true,
      },
    });

    if (!reservation) {
      return res.status(404).send({
        message: "Reservation not found",
      });
    }

    await db
      .update(reservations)
      .set({
        canceled: true,
      })
      .where(eq(reservations.id, reservation.id));

    return res.send({
      message: "Reservation canceled",
    });
  }
);

app.listen({
  port: 3002,
  host: "0.0.0.0",
});
