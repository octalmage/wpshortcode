winpty docker-compose exec wordpress wp core install --url="http://127.0.0.1:8081" --title="WordPress Site" --admin_user="wordpress" --admin_password="pressword" --admin_email="dev@local.fake" --skip-email
winpty docker-compose exec wordpress wp plugin activate wpshortcode
winpty docker-compose exec wordpress wp option update siteurl "http://192.168.99.101:8081"
winpty docker-compose exec wordpress wp option update home "http://192.168.99.101:8081"
