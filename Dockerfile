FROM mbentley/nginx
MAINTAINER Purpose Industres <dev@purposeindustries.co>
ADD nginx.conf /etc/nginx/nginx.conf
ADD run.sh /etc/nginx/run.sh
CMD /etc/nginx/run.sh
