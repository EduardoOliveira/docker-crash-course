#!/bin/sh
 
docker build -f ${1} -t ${2}:${3} .
docker tag ${2}:${3} ${AWS_ACCOUNT_ID}.dkr.ecr.eu-west-1.amazonaws.com/${2}:${3}
docker push ${AWS_ACCOUNT_ID}.dkr.ecr.eu-west-1.amazonaws.com/${2}:${3}
 
 
if [ "${4}"  -ne "" ]; then
    docker tag ${2}:${3} ${AWS_ACCOUNT_ID}.dkr.ecr.eu-west-1.amazonaws.com/${2}:${4}
    docker push ${AWS_ACCOUNT_ID}.dkr.ecr.eu-west-1.amazonaws.com/${2}:${4}
fi