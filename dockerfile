# Use an official OpenJDK runtime as a parent images
FROM openjdk:17-jdk

# Set the working directory in the containers
WORKDIR /app

# Copy the local JAR file into the containers
COPY target/spring-petclinic-3.3.0-SNAPSHOT.jar /app/spring-petclinic-3.3.0-SNAPSHOT.jar

# Expose the port the app runs on
EXPOSE 80

# Define the command to run the JAR file
ENTRYPOINT ["java", "-jar", "/app/spring-petclinic-3.3.0-SNAPSHOT.jar"]
