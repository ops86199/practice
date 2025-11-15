FROM ubuntu:20.04 AS prakash
RUN apt update -y && \
    apt install -y maven git openjdk-17-jdk && \
    git clone https://github.com/ops86199/pratice.git
WORKDIR /pratice 
RUN mvn package

FROM tomcat:9-jdk17 
COPY --from=prakash pratice/target/*.war /user/local/tomcat/myapp
RUNCHMOD -R 755 /user/locsl/tomcat/myapps
EXPOSE 8081
CMD ["catalina.sh","run"]
