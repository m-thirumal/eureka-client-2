mvn clean package -DskipTests=true
appName="eureka-client-2-0.0.1-SNAPSHOT.jar"
echo "Killing existing instances" $appName
pkill -f $appName

echo 'starting application'
count=1
if [ $# -gt 0 ] 
then
    count=$1
fi

echo "Total number of instance to start" $count
for i in $(seq 1 $count);
do
 echo "Starting instance " $i " of " $count;
 nohup java -jar target/$appName >& /dev/null &
done
