build:
	docker build -t zhihua/test --ulimit nofile=1024 .
run:
	docker run --ulimit nofile=1024 -p 8888:8888 -v ${PWD}:/home/jovyan/work zhihua/test
