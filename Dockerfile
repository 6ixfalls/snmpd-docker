FROM alpine:3.22

# renovate: datasource=repology depName=alpine_3_22/net-snmp versioning=loose
ENV NET_SNMP_VERSION="5.9.4-r1"

RUN apk add --no-cache net-snmp="${NET_SNMP_VERSION}"

RUN mkdir -p /etc/snmp/

EXPOSE 161/UDP

CMD ["snmpd", "-f"]
