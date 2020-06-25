FROM centos:7
MAINTAINER "iamadmin User<iamadmin@example.com>"
LABEL service="Apache Webserver"
RUN yum -y install httpd
RUN mkdir /opt/bin
RUN mkdir /opt/web_agents
ENV PASSWORD="password"
COPY entrypoint.sh /opt
COPY index.html /var/www/html/index.html
COPY web_agents /opt/web_agents/
COPY setupagent.sh /opt/bin/
ENTRYPOINT ["/opt/entrypoint.sh"]
EXPOSE 80
EXPOSE 443
CMD ["httpd", "-DFOREGROUND"]
