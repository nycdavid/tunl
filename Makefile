image:
	docker build \
	-t nycdavid/tunl:latest \
	.
run:
	docker run \
	--rm \
	-i \
	-p $(PORT):$(PORT) \
	-v $(PEM):/app/auth.pem \
	-e EC2_USER=$(EC2_USER) \
	-e EC2_DNS=$(EC2_DNS) \
	-e PORT=$(PORT) \
	nycdavid/tunl

run-nginx:
	docker run \
	-it \
	-p 0.0.0.0:80:80 \
	--rm \
	-v $(shell pwd)/conf.d:/etc/nginx/conf.d \
	nginx:1.13.12-alpine
