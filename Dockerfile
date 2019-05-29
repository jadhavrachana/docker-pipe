FROM centos
MAINTAINER rachana@globant.com 
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN yum install tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"] 
