
build-spa:
	docker build -t ferimer/nginx:spa spa/

build-proxy:
	docker build -t ferimer/nginx:proxy proxy/

build-openresty-proxy:
	docker build -t ferimer/openresty:proxy proxy_openresty/

build-rtmp:
	docker build -t ferimer/nginx:rtmp rtmp/

build: build-spa build-proxy build-rtmp build-openresty-proxy

publish: build
	docker push ferimer/nginx:spa
	docker push ferimer/nginx:proxy
	docker push ferimer/nginx:rtmp
	docker push ferimer/openresty:proxy

