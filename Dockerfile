FROM centos
MAINTAINER rachana@globant.com
RUN yum -y update 
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
RUN curl -O https://www-eu.apache.org/dist/tomcat/tomcat-8/v8.5.40/bin/apache-tomcat-8.5.40.tar.gz
RUN tar xvfz apache*.tar.gz
RUN mv apache-tomcat-8.5.40/* /opt/tomcat/.
RUN yum install -y java
RUN java --version
WORKDIR /opt/tomcat/webapp
RUN curl -O -L https://github.com/AKSarav/SampleWebApp/raw/master/dist/SampleWebApp.war
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh","run"] 
