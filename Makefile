SHELL := /bin/bash

# WordPress management via docker-compose
start:
	docker-compose -f docker-compose.yml up -d

stop:
	docker-compose -f docker-compose.yml stop

# One liner to get a shell inside the WordPress container.
shell:
	docker-compose exec wordpress /bin/bash

init:
	docker-compose exec wordpress wp core install --url="http://127.0.0.1:8081" --title="WordPress Site" --admin_user="wpengine" --admin_password="alphabravo" --admin_email="dev@local.fake" --skip-email
	docker-compose exec wordpress wp plugin activate wpshortcode
