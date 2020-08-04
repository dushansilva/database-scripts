if [[ $1 == "" ]]; then
    echo "Exiting"
    exit
fi

docker cp restore.sql mssql:/
docker cp $1/. mssql:/backups/
docker exec mssql /opt/mssql-tools/bin/sqlcmd -S localhost -U SA -P dushan@123 -i /restore.sql