FROM yiisoftware/yii2-php:7.4-apache

# Set the working directory inside the container
WORKDIR /app

# Copy the app code to the container
COPY . /app

# Install dependencies (this will install Composer and install the required PHP packages)
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer \
    && composer install --no-interaction --prefer-dist