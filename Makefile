
build-spa:
	docker build -t ferimer/nginx:spa spa/

build-proxy:
	docker build -t ferimer/nginx:proxy proxy/

build-rtmp:
	docker build -t ferimer/nginx:rtmp rtmp/

build: build-spa build-proxy build-rtmp

publish: build
	docker push ferimer/nginx:spa
	docker push ferimer/nginx:proxy
	docker push ferimer/nginx:rtmp
