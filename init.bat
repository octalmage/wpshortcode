docker-compose exec wordpress wp core install --url="http://127.0.0.1:8081" --title="WordPress Site" --admin_user="wordpress" --admin_password="pressword" --admin_email="dev@local.fake" --skip-email
docker-compose exec wordpress wp plugin activate wpshortcode
