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
