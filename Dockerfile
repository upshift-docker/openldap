FROM alpine:3.16

LABEL maintainer="docker-remove@upshift.fr"

RUN set -eux; \
	# install needed packages
	apk add --no-cache \
		bash \
		openldap \
		openldap-back-mdb \
	; \
	mkdir /run/openldap && chown ldap:ldap /run/openldap \
	; \
	/bin/true

VOLUME /etc/openldap
VOLUME /var/lib/openldap

EXPOSE 389/tcp

CMD ["/usr/sbin/slapd", "-u", "ldap", "-g", "ldap", "-d", "768"]
