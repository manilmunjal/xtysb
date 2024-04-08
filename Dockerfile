# Use the latest Ubuntu image as base
FROM ubuntu:latest

# Install dependencies
RUN apt-get update && \
    apt-get install -y nodejs npm && \
    npm install -g http-server

# Install Apache Tomcat
RUN apt-get install -y tomcat9

# Expose port 8080 for Tomcat
EXPOSE 8080

# Copy the Node.js Hello World app to Tomcat webapps directory
COPY node-app.js /node-app.js

# Start Tomcat
CMD ["catalina.sh", "run"]
# KSRJ
