# OpenLDAP Server

Docker image for openldap server.

## Usage

This image does not include configuration. Configuration file should be mounted using a docker volume.

Start the container:

```console
# docker run -d --name openldap \
  -v /path/to/config:/etc/openldap \
  -v /path/to/data:/var/lib/openldap \
  -p 389:389 \
  upshift/openldap
```

