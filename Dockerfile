FROM ubuntu
RUN apt-get update && apt-get install -y apache2
RUN echo "This webserver is build through jenkins server" > /var/www/html/index.html
EXPOSE 80
ENTRYPOINT ["apache2ctl"]
CMD ["-DFOREGROUND"]
