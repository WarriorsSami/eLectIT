# Use a Gradle image with JDK 21
FROM gradle:8.12-jdk21 AS builder

# Set the working directory in the container
WORKDIR /app

# Copy Gradle wrapper and build files
COPY gradle /app/gradle
COPY gradlew /app/gradlew
COPY build.gradle.kts /app/build.gradle.kts
COPY settings.gradle.kts /app/settings.gradle.kts
COPY src /app/src

# Grant executable permissions to the Gradle wrapper
RUN chmod +x gradlew

# Build the application
RUN ./gradlew build --no-daemon

# Use an OpenJDK 21 runtime image for running the application
FROM openjdk:21-jdk-slim

# Set the working directory in the container
WORKDIR /app

# Copy the built jar from the builder stage
COPY --from=builder /app/build/libs/*.jar app.jar

# Command to run the application
CMD ["java", "-jar", "app.jar"]