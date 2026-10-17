FROM gcc:14 AS build
ARG TZ=Europe/Moscow
COPY timewriter.cpp /src/
RUN g++ -std=c++23 -O2 -static -o /timewriter /src/timewriter.cpp && echo "$TZ" > /timezone

FROM scratch
COPY --from=build /timewriter /timewriter
COPY --from=build /timezone /etc/timezone
ENV TIMEWRITER_FILE=/data/timewriter.docker.log
ENTRYPOINT ["/timewriter"]
