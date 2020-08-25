if [[ $1 == "" ]]; then
    echo "Exiting"
    exit
fi

docker cp backup.sql mssql:/
docker exec mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P dushan@123 -i backup.sql
docker cp mssql:/backups/apimgtdb.bak  $1
docker cp mssql:/backups/shareddb.bak  $1
docker cp mssql:/backups/analyticsdb.bak  $1
docker cp mssql:/backups/dashboarddb.bak  $1
docker cp mssql:/backups/businessrulesdb.bak  $1
docker cp mssql:/backups/permissionsdb.bak  $1