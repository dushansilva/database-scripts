if [[ $1 == "" ]]; then
    echo "Exiting"
    exit
fi

docker exec mysql mysql -u admin -ppassword -e "create database apimgtdb"
docker exec -i mysql mysql -uadmin -ppassword --force apimgtdb < $1/apimgtdb.dump

# docker exec mysql mysql -u admin -ppassword -e "create database analyticsdb"
# docker exec -i mysql mysql -uadmin -ppassword --force analyticsdb < $1/analyticsdb.dump

docker exec mysql mysql -u admin -ppassword -e "create database shareddb"
docker exec -i mysql mysql -uadmin -ppassword --force shareddb < $1/shareddb.dump

# docker exec mysql mysql -u admin -ppassword -e "create database dashboarddb"
# docker exec -i mysql mysql -uadmin -ppassword --force dashboarddb < $1/dashboarddb.dump

# docker exec mysql mysql -u admin -ppassword -e "create database businessrulesdb"
# docker exec -i mysql mysql -uadmin -ppassword --force businessrulesdb < $1/businessrulesdb.dump

# docker exec mysql mysql -u admin -ppassword -e "create database permissionsdb"
# docker exec -i mysql mysql -uadmin -ppassword --force permissionsdb < $1/permissionsdb.dump