#! /bin/bash
#title           :eureka-client-2.sh
#description     :This script will make a header for a bash script.
#author		     :Thirumal(m.thirumal@hotmail.com)
#date            :12/03/2020
#version         :0.1
#usage		     :./eureka-client-2.sh 2 in LINUX & sh eureka-client-2.sh 2 in MAC OS
#notes           :Install Vim

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
