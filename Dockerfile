FROM ubuntu:with_nginx_php7.0-fpm

#CMD ["/bin/sh", "start.sh"]
# Append "daemon off;" to the beginning of the configuration
ADD default.conf /etc/nginx/conf.d/default.conf
ADD ../web-portal /var/www/pep/web-portal  
RUN echo "daemon off;" >> /etc/nginx/nginx.conf
EXPOSE 80
CMD service php5-fpm start && nginx
