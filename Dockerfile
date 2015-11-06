FROM tomcat
MAINTAINER Manuel Leduc <manuel.leduc@inria.fr> (@manuel_leduc)

EXPOSE 8080

RUN wget https://bitbucket.org/aristar/jnuget/downloads/jnuget-0.8.0-SNAPSHOT.war -O /usr/local/tomcat/webapps/jnuget.war
RUN unzip /usr/local/tomcat/webapps/jnuget.war -d /usr/local/tomcat/webapps/jnuget
ADD docker/jnuget.default.config.xml /usr/local/tomcat/webapps/jnuget/WEB-INF/classes

CMD ["catalina.sh", "run"]
