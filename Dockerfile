FROM node:20-slim AS base
ENV PNPM_HOME="/pnpm"
ENV PATH="$PNPM_HOME:$PATH"
RUN corepack enable

FROM base AS build
COPY . ./usr/src/app
WORKDIR /usr/src/app
RUN --mount=type=cache,id=pnpm,target=/pnpm/store pnpm install --frozen-lockfile

RUN pnpm run -r build
RUN pnpm deploy --filter=busca-hoteis --prod /prod/busca-hoteis
RUN pnpm deploy --filter=reserva --prod /prod/reserva


FROM base AS busca-hoteis
COPY --from=build /prod/busca-hoteis /prod/busca-hoteis
WORKDIR /prod/busca-hoteis
EXPOSE 3000
CMD [ "pnpm", "start" ]

FROM base AS reserva
COPY --from=build /prod/reserva /prod/reserva
WORKDIR /prod/reserva
EXPOSE 3001
CMD ["pnpm", "start"]