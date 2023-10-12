FROM alpine:3.15
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on $BUILDPLATFORM, building for $TARGETPLATFORM"

# Install dnsmasq
RUN set -eux; \
    apk add --no-cache dnsmasq~=2.86; \
    dnsmasq --version

RUN apk add --no-cache ca-certificates

COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "--no-daemon" ]
