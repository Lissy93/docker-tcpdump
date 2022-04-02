FROM alpine:latest
RUN apk add --no-cache tcpdump
CMD tcpdump -i any
