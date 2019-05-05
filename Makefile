
build-spa:
	docker build -t ferimer/nginx-spa spa/

build-proxy:
	docker build -t ferimer/nginx-proxy proxy/

build-mail:
	docker build -t ferimer/nginx-mailproxy mailproxy/

build: build-spa build-proxy build-mail

publish: build
	docker push ferimer/nginx-spa
	docker push ferimer/nginx-proxy
	docker push ferimer/nginx-mailproxy
