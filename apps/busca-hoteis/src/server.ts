import Fastify, { FastifyReply, FastifyRequest } from "fastify";
import { db } from "@micro/db";

const app = Fastify({});

app.get("/hotels", async (req: FastifyRequest, res: FastifyReply) => {
  const hotels = await db.query.hotels.findMany({});

  return res.send({
    hotels,
  });
});

app.listen({
  port: 3000,
  host: "0.0.0.0",
});
