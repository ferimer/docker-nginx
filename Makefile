
build-spa:
	docker build -t ferimer/nginx:spa spa/

build-wafproxy:
	docker build -t ferimer/nginx:wafproxy waf_modsecurity/

build-proxy:
	docker build -t ferimer/nginx:proxy proxy/

build-openresty-proxy:
	docker build -t ferimer/openresty:proxy proxy_openresty/

build-rtmp:
	docker build -t ferimer/nginx:rtmp rtmp/

build-static:
	docker build -t ferimer/nginx:static static/

build: build-spa build-proxy build-rtmp build-openresty-proxy build-static

publish: build
	docker push ferimer/nginx:spa
	docker push ferimer/nginx:proxy
	docker push ferimer/nginx:rtmp
	docker push ferimer/openresty:proxy
	docker push ferimer/nginx:static

