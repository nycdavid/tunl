image:
	docker build \
	-t nycdavid/tunl:latest \
	.
run:
	docker run \
	--rm \
	-it \
	-p $(PORT):$(PORT) \
	-v $(PEM):/app/auth.pem \
	nycdavid/tunl
