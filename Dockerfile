# Use an official SonarQube image as the base image
FROM sonarqube:latest

# Download and install the C++ plugin
RUN wget -O /opt/sonarqube/extensions/plugins/sonar-cxx-plugin-2.1.2.526.jar \
    https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/latest-snapshot/sonar-cxx-plugin-2.1.2.526.jar

# Optionally, customize SonarQube configurations
# Example: Copy custom configuration files if needed
# COPY sonar.properties /opt/sonarqube/conf/sonar.properties

# Expose the default SonarQube web port
EXPOSE 9000

# Define entry point
#CMD ["./bin/run.sh"]