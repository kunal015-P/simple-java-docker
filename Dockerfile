# stable official Java runtime base image
FROM eclipse-temurin:17-jdk-alpine

# working directory
WORKDIR /app

# Copy source code into the container
COPY src/Main.java /app/Main.java

# Compile the Java code
RUN javac Main.java

# Expose Port
EXPOSE 8000

# Run the Java application when the container starts
CMD ["java", "Main"]
