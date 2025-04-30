FROM php:8.2-cli

WORKDIR /usr/src/app

COPY index.php .

EXPOSE 80

CMD ["php", "-S", "0.0.0.0:80", "index.php"] 

HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD curl --silent --fail http://localhost:80 || exit 1
