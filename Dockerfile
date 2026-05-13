FROM eclipse-temurin:21-jre
WORKDIR /server
COPY runtime-template/ ./
EXPOSE 25565
CMD ["java", "-Xms1G", "-Xmx4G", "-jar", "paper.jar", "nogui"]
