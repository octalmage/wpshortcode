# Start with the latest WordPress image.
FROM wordpress:latest

# Install server dependencies.
RUN apt-get update && apt-get install -qq -y php5-mysql build-essential pkg-config libcairo2-dev libjpeg-dev libgif-dev git subversion mysql-client zip unzip vim libyaml-dev --fix-missing --no-install-recommends

# Disable PHP opcache (not great while developing)
RUN rm -rf /usr/local/etc/php/conf.d/opcache-recommended.ini
