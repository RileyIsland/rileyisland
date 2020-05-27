SHELL := /usr/bin/env bash

down:
	docker-compose down

remove-all:
	docker ps -a -q | xargs docker stop; docker system prune -af --volumes

up:
	docker-compose up -d
