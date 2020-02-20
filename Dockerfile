FROM php:7.2-apache

# Update aptitude with new repo
RUN apt-get update && apt-get install -y \
        git 

# Work Directory
WORKDIR /var/www/html/

# Copy Key
# cp  ~/.ssh/id_rsa ./
COPY id_rsa /root/.ssh/

RUN touch /root/.ssh/known_hosts
RUN ssh-keyscan github.com >> /root/.ssh/known_hosts

RUN git clone git@github.com:harutotanabe09/html_format.git .