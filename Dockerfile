# Use the official Tomcat 9.0 image as the base image
FROM tomcat:9.0

# Copy the Oracle JDBC driver JAR file into the container
COPY . ojdbc*.jar /usr/local/tomcat/lib/

# Copy the JSP project files into the container
COPY . /usr/local/tomcat/webapps/ROOT/

# Expose the port that Tomcat will listen on
EXPOSE 8081

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
