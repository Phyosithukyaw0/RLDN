#!/bin/bash
<--RLDN(reverse lookup dns busteforce)-->
read -p "Enter your domain website:: " domain
red='\033[0;21m'
blue='\033[0;34m'
printf  "\t\t\t$blue--------$domain-----------\n\n"

for  ip in $(cat subdomain.txt);do 
 host $ip.$domain |grep "has address" |cut -d " " -f4,1 |sort -u
done 
   echo "Crd by Phyosithukyaw"
