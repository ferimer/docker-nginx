# WAF with NGINX

## Internal container logs at:

`/var/log/modsec_audit.log`

## Notes

`/etc/nginx/conf.d` SHALL be writeable, and a `default.conf` SHALL exist

## ModSecurity CRS

`/etc/modsecurity.d/owasp-crs`

## Enable with

Add to NGINX default config:

```
modsecurity on;
modsecurity_rules_file /etc/modsecurity.d/setup.conf;
```

## Test

```sh
docker run -v ${PWD}/reports:/go/src/gotestwaf/reports wallarm/gotestwaf --url=https://domain.tld/
```
