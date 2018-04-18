# Start with the latest WordPress image.
FROM wordpress:latest

# Install server dependencies.
RUN apt-get update && apt-get install -qq -y build-essential git subversion mysql-client zip unzip vim libyaml-dev sudo less --fix-missing --no-install-recommends

# Add WP-CLI
RUN curl -o /bin/wp-cli.phar https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar
COPY wp-su.sh /bin/wp
RUN chmod +x /bin/wp-cli.phar /bin/wp

# Disable PHP opcache (not great while developing)
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
