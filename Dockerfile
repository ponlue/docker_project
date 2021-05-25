FROM ubuntu
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get install git -y
RUN apt-get install apache2 -y
RUN apt-get install apache2-utils -y
RUN apt-get clean -y

ADD project /var/www/html/project
VOLUME share /var/www/html/project/share
WORKDIR /var/www/html/project

EXPOSE 80
CMD ["apache2ctl","-D","FOREGROUND"]

