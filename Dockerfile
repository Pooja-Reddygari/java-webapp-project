# Using the tomcat image from the docker hub website
FROM tomcat:9.0

# It removes the default webapps to avoid conflict
RUN rm -rf /usr/local/tomcat/webapps/*

# This copies WAR from maven target directory into tomcat's ROOT
COPY target/demo-snapshot.war /usr/local/tomcat/webapps/ROOT.war

# providing the tomcat port
EXPOSE 8080

# In order to start tomcat in foreground, we need to use cataline.sh
CMD ["catalina.sh", "run"]
