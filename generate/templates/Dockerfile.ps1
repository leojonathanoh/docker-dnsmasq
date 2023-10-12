@"
FROM $( $VARIANT['_metadata']['distro'] ):$( $VARIANT['_metadata']['distro_version'] )
ARG TARGETPLATFORM
ARG BUILDPLATFORM
RUN echo "I am running on `$BUILDPLATFORM, building for `$TARGETPLATFORM"

# Install dnsmasq
RUN set -eux; \
    apk add --no-cache $( $VARIANT['_metadata']['package'] )$( if ( $VARIANT['_metadata']['distro'] -eq 'alpine' -and $VARIANT['_metadata']['distro_version'] -eq '3.6' ) { '>=' } else { '~=' } )$( $VARIANT['_metadata']['package_version'] ); \
    dnsmasq --version

RUN apk add --no-cache ca-certificates


"@

@"
COPY docker-entrypoint.sh /docker-entrypoint.sh
RUN chmod +x docker-entrypoint.sh

ENTRYPOINT [ "/docker-entrypoint.sh" ]
CMD [ "--no-daemon" ]

"@
