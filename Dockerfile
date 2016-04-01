FROM greyltc/lamp:latest
MAINTAINER NarsuMan
WORKDIR /testlink

# 1.9.14
RUN wget --content-disposition "http://downloads.sourceforge.net/project/testlink/TestLink%201.9/TestLink%201.9.14/testlink-1.9.14.tar.gz?r=http%3A%2F%2Ftestlink.org%2F&ts=1459505121&use_mirror=tenet"
RUN gunzip testlink-1.9.14.tar.gz
RUN tar xvf testlink-1.9.14.tar.gz
RUN rm testlink-1.9.14.tar.gz
RUN mv testlink-1.9.14/* /var/www/
RUN chown www-data /var/www/testlink-1.9.14

EXPOSE 80
ENTRYPOINT ["bash","baasbox/start"]
