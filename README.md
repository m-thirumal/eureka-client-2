# Eureka-client-2

Eureka client 2 for client load balancing 

# To create jar
> mvn clean package -DskipTests=true

#Run with different port
>  java -Dserver.port=8075 -jar target/eureka-client-2-0.0.1-SNAPSHOT.jar

>  java -Dserver.port=8074 -jar target/eureka-client-2-0.0.1-SNAPSHOT.jar

# Swagger 2 is accessible from 

> [http://localhost:{{port}}/2/swagger-ui.html](http://localhost:8082/2/swagger-ui.html)

# Run it using shell script

> ./eureka-client-2.sh {{NUMBER_OF_INSTANCE}}

Eg:
> ./eureka-client-2.sh 3

By default total number of instance to start is 1
