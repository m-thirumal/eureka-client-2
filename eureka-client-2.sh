mvn clean package -DskipTests=true
echo 'starting application'
count=1
if [ $# -gt 0 ] 
then
    count=$1
    echo "sss" $1
fi

echo "Total number of instance to start" $count
for i in $(seq 1 $count);
do
 echo "Starting instance " $i " of " $count;
 nohup java -jar target/eureka-client-2-0.0.1-SNAPSHOT.jar &
done
