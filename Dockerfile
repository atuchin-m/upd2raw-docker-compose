ARG ALPINE_VER=3.18

FROM alpine:${ALPINE_VER} AS builder
ARG TAG="20230206.0"
RUN apk --no-cache add git make gcc g++ libc-dev linux-headers
RUN git clone --branch $TAG --depth 1 https://github.com/wangyu-/udp2raw.git
RUN cd /udp2raw && make

FROM alpine:${ALPINE_VER}
RUN apk --no-cache add iptables
COPY --from=builder /udp2raw/udp2raw /udp2raw
ENTRYPOINT [ "/udp2raw" ]
