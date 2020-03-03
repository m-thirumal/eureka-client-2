# Eureka-client-2

Eureka client 2 for client load balancing 

# To create jar
> mvn clean package -DskipTests=true

#Run with different port
>  java -Dserver.port=8075 -jar target/eureka-client-2-0.0.1-SNAPSHOT.jar

>  java -Dserver.port=8074 -jar target/eureka-client-2-0.0.1-SNAPSHOT.jar