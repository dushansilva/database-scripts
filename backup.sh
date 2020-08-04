if [[ $1 == "" ]]; then
    echo "Exiting"
    exit
fi

APIM_HOME=$1
rm -rf ./backups/*
cp -rf $APIM_HOME/repository/deployment/server/synapse-configs/default ./backups/
cp -rf $APIM_HOME/repository/tenants ./backups/
cp -rf $APIM_HOME/repository/deployment/server/executionplans ./backups/

rm ./backups/default/api/_RevokeAPI_.xml
rm ./backups/default/sequences/_cors_request_handler_.xml
rm ./backups/default/sequences/main.xml
rm ./backups/default/proxy-services/WorkflowCallbackService.xml