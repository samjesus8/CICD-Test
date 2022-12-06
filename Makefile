DOCKER_IMAGE:=my-first-container

build:
	docker build --tag ${DOCKER_IMAGE} .

run_pytest:
	docker run --rm ${DOCKER_IMAGE} pytest

run_black_check:
	docker run --rm ${DOCKER_IMAGE} black --check .

shell:
	docker run --rm -it --volume ${PWD}:/app/ ${DOCKER_IMAGE} /bin/bash