# NGINX with WebDAV support

Ejecución:

```
docker run -d -p 8080:80 -v `pwd`/test:/usr/share/nginx/html -e WEBDAV_USERNAME=usuario -e WEBDAV_PASSWORD=1234 ferimer/nginx:webdav
```
