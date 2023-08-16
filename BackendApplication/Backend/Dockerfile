# First stage called "builder"
FROM maven:3.8.6-openjdk-11-slim AS builder
#WORKDIR /project
ADD . /project
RUN mvn -f /project/pom.xml -DskipTests package

#Second stage
FROM openjdk:11-jre-slim
#WORKDIR /app

# Copy only the Jar from the "builder" stage
COPY --from=builder /project/target/ecommerce-backend.jar ecommerce-banckend.jar

# Run the Jar = Final image only containers Second stage
ENTRYPOINT ["java","-Dspring.profiles.active=docker","-jar","/ecommerce-banckend.jar"]
