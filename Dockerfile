# Stage 1: builder — has the full JDK, used only to compile
FROM eclipse-temurin:21-jdk AS builder
WORKDIR /app
COPY HelloDevOps.java .
RUN javac HelloDevOps.java

# Stage 2: final — lightweight JRE, only for running
FROM eclipse-temurin:21-jre
WORKDIR /app
COPY --from=builder /app/HelloDevOps.class .
RUN mkdir -p /app/data
CMD ["java", "HelloDevOps"]
