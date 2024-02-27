# Gunakan image PHP dari Docker Hub
FROM php:latest

# Set direktori kerja di dalam container
WORKDIR /var/www/html

# Salin file PHP dari proyek Anda ke direktori kerja di dalam container
COPY . /var/www/html

# Port yang perlu di-expose (jika diperlukan)
EXPOSE 80

# Perintah untuk menjalankan server PHP (misalnya, Apache)
CMD ["php", "-S", "0.0.0.0:80"]
