CONTAINER := emacs

build:
	docker build -t $(CONTAINER) .

run:
	docker run -it -e DISPLAY=10.0.0.162:0 $(CONTAINER) /bin/sh
