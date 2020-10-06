FROM devopsedu/webapp
RUN apt-get install -y apache2
RUN apt-get install -y apache2-utils
ADD website /var/www/html
RUN rm /var/www/html/index.html
CMD apchectl -D FOREGROUND
