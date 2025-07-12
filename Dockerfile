FROM dunglas/frankenphp:1.8.0-builder-php8.2-bookworm
# Install system packages you might need (optional)
RUN apt-get update && apt-get install -y git zip unzip nano
# Install Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Set working directory
WORKDIR /app
# Copy your app
COPY . /app
# Expose HTTP port
EXPOSE 80
EXPOSE 443