import {
  and,
  asc,
  between,
  count,
  eq,
  hotels,
  ilike,
  notInArray,
} from "@repo/db";
import { rooms } from "@repo/db";
import { reservations } from "@repo/db";
import { db } from "@repo/db";
import { FastifyInstance, FastifyReply, FastifyRequest } from "fastify";
import { z } from "zod";

const querySchema = z.object({
  startDate: z.string().date().optional(),
  endDate: z.string().date().optional(),
  location: z.string().optional(),
  page: z.coerce.number().optional().default(1),
});

export async function getHotelsRoute(app: FastifyInstance) {
  app.get(
    "/hotels",
    {
      schema: {
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
            location: {
              type: "string",
              description: "Cidade",
            },
            page: {
              type: "number",
              description: "Página",
            },
          },
        },
        response: {
          default: {
            description: "Success response",
            type: "object",
            properties: {
              hotels: {
                type: "array",
                items: {
                  type: "object",
                  properties: {
                    id: {
                      type: "string",
                    },
                    name: {
                      type: "string",
                    },
                    city: {
                      type: "string",
                    },
                  },
                },
              },
              totalCount: {
                type: "number",
              },
            },
          },
        },
      },
    },
    async (req: FastifyRequest, res: FastifyReply) => {
      const query = querySchema.safeParse(req.query);

      if (query.success !== true) {
        return res.status(422).send({
          error: query.error.flatten(),
        });
      }

      const { endDate, startDate, location, page } = query.data;

      const limit = 10;
      const offset = (page - 1) * limit;

      const hotelsQuery = await db
        .select({
          id: hotels.id,
          name: hotels.name,
          city: hotels.city,
        })
        .from(hotels)
        .innerJoin(rooms, eq(rooms.hotelId, hotels.id))
        .where(
          and(
            location ? ilike(hotels.city, `%${location}%`) : undefined,
            startDate && endDate
              ? notInArray(
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
              : undefined
          )
        )
        .limit(limit)
        .offset(offset)
        .orderBy(asc(hotels.name))
        .groupBy(hotels.id);

      const [totalCount] = await db
        .select({
          count: count(hotels.id),
        })
        .from(hotels)
        .innerJoin(rooms, eq(rooms.hotelId, hotels.id))
        .where(
          and(
            location ? ilike(hotels.city, `%${location}%`) : undefined,
            startDate && endDate
              ? notInArray(
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
              : undefined
          )
        );

      return res.send({
        hotels: hotelsQuery,
        totalCount: totalCount.count,
      });
    }
  );
}
