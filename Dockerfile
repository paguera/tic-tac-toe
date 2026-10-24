FROM php:8.4.27-alpine

WORKDIR /var/www/html

# Copy source code to the web root
COPY . /var/www/html/

# Expose port 80
EXPOSE 80

# Serve with PHP built-in web server
CMD ["php", "-S", "0.0.0.0:80", "-t", "/var/www/html"]
