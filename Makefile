
build-spa:
	docker build -t ferimer/nginx-spa spa/

build-proxy:
	docker build -t ferimer/nginx-proxy proxy/

build: build-spa build-proxy

publish: build
	docker push ferimer/nginx-spa
	docker push ferimer/nginx-proxy
