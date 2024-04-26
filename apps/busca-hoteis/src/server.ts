import Fastify from "fastify";
import swagger from "@fastify/swagger";
import swaggerUi from "@fastify/swagger-ui";
import { getHotelsRoute } from "./routes/get-hotels";
import { getRoomsRoute } from "./routes/get-rooms";

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

app.register(getHotelsRoute);
app.register(getRoomsRoute);

await app.ready();

app.listen({
  port: 3000,
  host: "0.0.0.0",
});
