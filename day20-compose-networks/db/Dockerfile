FROM alpine:3.19
RUN apk add --no-cache netcat-openbsd
CMD ["nc", "-lk", "-p", "5432"]
