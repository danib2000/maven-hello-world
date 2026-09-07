
## Stage Build
FROM maven:3.9.6-eclipse-temurin-17-alpine AS build 
WORKDIR /myapp

# Copy pom.xml and resolve dependencies separately for layer caching
COPY myapp/pom.xml .
RUN mvn dependency:go-offline -B

# Copy source files and build the artifact
COPY myapp/src ./src
RUN mvn clean package -DskipTests

## Stage Prod 
FROM eclipse-temurin:17-jre-alpine
WORKDIR /app

# Create a non-root user for better security
RUN addgroup -S appgroup && adduser -S appuser -G appgroup
USER appuser:appgroup

# Copy the compiled JAR file from the build stage
COPY --from=build /myapp/target/*.jar app.jar

# Expose the application port (e.g., 8080 for Spring Boot)
EXPOSE 8080

# Run the application
ENTRYPOINT ["java", "-jar", "app.jar"]

