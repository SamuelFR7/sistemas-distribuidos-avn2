import Fastify, { FastifyReply, FastifyRequest } from "fastify";
import {
  and,
  asc,
  between,
  count,
  db,
  eq,
  hotels,
  ilike,
  notInArray,
  reservations,
  rooms,
} from "@repo/db";
import { z } from "zod";

const app = Fastify({
  logger: true,
});

const querySchema = z.object({
  startDate: z.string().date().optional(),
  endDate: z.string().date().optional(),
  location: z.string().optional(),
  page: z.coerce.number().optional().default(1),
});

app.get("/hotels", async (req: FastifyRequest, res: FastifyReply) => {
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
});

const querySchemaRooms = z.object({
  startDate: z.string().date(),
  endDate: z.string().date(),
});

const paramsSchema = z.object({
  hotelId: z.string(),
});

app.get("/rooms/:hotelId", async (req: FastifyRequest, res: FastifyReply) => {
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
    .innerJoin(reservations, eq(rooms.id, reservations.roomId))
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
                eq(rooms.id, reservations.id),
                between(reservations.startDate, startDate, endDate),
                between(reservations.endDate, startDate, endDate)
              )
            )
        )
      )
    );

  return res.send(roomsQuery);
});

app.listen({
  port: 3000,
  host: "0.0.0.0",
});
