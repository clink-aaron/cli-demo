
setup:
	docker-compose build
	docker-compose run --rm demo twilio flex:plugins:create plugin-sample --install


run:
	docker-compose run --rm --service-ports --workdir /app/plugin-sample demo \
		twilio flex:plugins:start
