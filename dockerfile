# Use a valid OpenJDK 17 base image
FROM openjdk:17-jdk-slim

# Set working directory
WORKDIR /app

# Copy the JAR file from target folder
COPY target/myapp-1.0.jar app.jar

# Expose port (optional, just for documentation)
EXPOSE 8081

# Run the JAR when container starts
ENTRYPOINT ["java", "-jar", "app.jar"]

