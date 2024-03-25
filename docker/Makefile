#Makefile
USER_NAME=unkindy

build_comment:
	export USER_NAME=$(USER_NAME) && cd ../src/comment && bash docker_build.sh
build_ui:
	export USER_NAME=$(USER_NAME) && cd ../src/ui && bash docker_build.sh
build_post-py:
	export USER_NAME=$(USER_NAME) && cd ../src/post-py && bash docker_build.sh
build_prom:
	export USER_NAME=$(USER_NAME) && cd ../monitoring/prometheus && docker build -t $(USER_NAME)/prometheus .

push:
	docker login
	docker push $(USER_NAME)/ui:latest
	docker push $(USER_NAME)/post:latest
	docker push $(USER_NAME)/comment:latest
	docker push $(USER_NAME)/prometheus:latest
