import { and, between, eq, notInArray, rooms } from "@repo/db";
import { reservations } from "@repo/db";
import { db } from "@repo/db";
import { FastifyInstance, FastifyReply, FastifyRequest } from "fastify";
import { z } from "zod";

const querySchemaRooms = z.object({
  startDate: z.string().date(),
  endDate: z.string().date(),
});

const paramsSchema = z.object({
  hotelId: z.string(),
});

export async function getRoomsRoute(app: FastifyInstance) {
  app.get(
    "/rooms/:hotelId",
    {
      schema: {
        params: {
          type: "object",
          properties: {
            hotelId: {
              type: "string",
              description: "Hotel selecionado",
            },
          },
        },
        querystring: {
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
          },
        },
      },
    },
    async (req: FastifyRequest, res: FastifyReply) => {
      const query = querySchemaRooms.safeParse(req.query);
      const params = paramsSchema.safeParse(req.params);

      if (query.success !== true) {
        return res.status(422).send({
          errors: query.error.flatten(),
        });
      }

      if (params.success !== true) {
        return res.status(422).send({
          errors: params.error.flatten(),
        });
      }

      const { endDate, startDate } = query.data;
      const { hotelId } = params.data;

      const roomsQuery = await db
        .select({
          id: rooms.id,
        })
        .from(rooms)
        .where(
          and(
            eq(rooms.hotelId, hotelId),
            notInArray(
              rooms.id,
              db
                .select({ id: rooms.id })
                .from(reservations)
                .innerJoin(
                  rooms,
                  and(
                    eq(rooms.id, reservations.roomId),
                    between(reservations.startDate, startDate, endDate),
                    between(reservations.endDate, startDate, endDate),
                    eq(reservations.canceled, false)
                  )
                )
            )
          )
        )
        .groupBy(rooms.id);

      return res.send(roomsQuery);
    }
  );
}
