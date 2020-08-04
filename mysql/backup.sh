if [[ $1 == "" ]]; then
    echo "Exiting"
    exit
fi

docker exec mysql mysqldump -u admin -ppassword apimgtdb > $1/apimgtdb.dump
docker exec mysql mysqldump -u admin -ppassword shareddb > $1/shareddb.dump
docker exec mysql mysqldump -u admin -ppassword permissionsdb > $1/permissionsdb.dump
docker exec mysql mysqldump -u admin -ppassword dashboarddb > $1/dashboarddb.dump
docker exec mysql mysqldump -u admin -ppassword businessrulesdb > $1/businessrulesdb.dump
docker exec mysql mysqldump -u admin -ppassword analyticsdb > $1/analyticsdb.dump
