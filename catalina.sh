#!/bin/sh

# Apache Tomcat startup script

# Set CATALINA_HOME dynamically
export CATALINA_HOME="$(dirname "$(readlink -f "$0")")/.."

# Set JAVA_HOME dynamically (assuming it's located in the parent directory of Tomcat)
export JAVA_HOME="$(dirname "$CATALINA_HOME")/jdk-11"

# Start Tomcat
"$CATALINA_HOME"/bin/startup.sh

# Add any other custom commands or configurations here
