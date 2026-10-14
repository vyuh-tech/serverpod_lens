# Optional Cloud demo: build from the repository root after building its Flutter app.
# docker build -f examples/large_schema/server/Dockerfile .
FROM dart:3.13.0 AS build
WORKDIR /app
COPY packages/serverpod_lens_schema packages/serverpod_lens_schema
COPY tool/lens tool/lens
COPY examples/large_schema/server examples/large_schema/server
# The server's Dart-only workspace excludes Flutter hosts and the tooling viewer.
RUN printf '%s\n' 'name: _' 'environment:' '  sdk: ^3.13.0' 'workspace:' \
  '  - packages/serverpod_lens_schema' \
  '  - tool/lens' '  - examples/large_schema/server' > pubspec.yaml
RUN dart pub get
WORKDIR /app/examples/large_schema/server
RUN dart build cli --target bin/main.dart --output build
RUN mv build/bundle/bin/main build/bundle/bin/server
RUN mkdir -p config web migrations
FROM alpine:latest
WORKDIR /app
ENV runmode=production
ENV serverid=default
ENV logging=normal
ENV role=monolith
COPY --from=build /runtime/ /
COPY --from=build /app/examples/large_schema/server/build/bundle/ ./
COPY --from=build /app/examples/large_schema/server/config/ config/
COPY --from=build /app/examples/large_schema/server/web/ web/
COPY --from=build /app/examples/large_schema/server/migrations/ migrations/
COPY --from=build /app/examples/large_schema/server/lib/src/generated/protocol.yaml lib/src/generated/protocol.yaml
EXPOSE 8080 8081 8082
ENTRYPOINT ./bin/server --mode=$runmode --server-id=$serverid --logging=$logging --role=$role
