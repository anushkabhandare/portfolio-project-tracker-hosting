FROM tomcat:9.0

# Add MySQL driver to Tomcat's lib folder
COPY mysql-connector-j-9.4.0.jar /usr/local/tomcat/lib/

RUN rm -rf /usr/local/tomcat/webapps/ROOT
COPY Portfolio_Project_Tracker.war /usr/local/tomcat/webapps/ROOT.war

EXPOSE 8080
CMD ["catalina.sh", "run"]
