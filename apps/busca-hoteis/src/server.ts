import Fastify, { FastifyReply, FastifyRequest } from "fastify";
import { count, db } from "@micro/db";
import { z } from "zod";
import { hotels } from "@micro/db/schema";

const app = Fastify({});

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

  const hotelsQuery = await db.query.hotels.findMany({
    where: (hotels, { ilike }) =>
      location ? ilike(hotels.city, `%${location}%`) : undefined,
    limit,
    offset,
    columns: {
      name: true,
      city: true,
    },
  });

  const [totalCount] = await db
    .select({
      count: count(hotels.id),
    })
    .from(hotels);

  return res.send({
    hotels: hotelsQuery,
    totalCount: totalCount.count,
  });
});

app.listen({
  port: 3000,
  host: "0.0.0.0",
});
