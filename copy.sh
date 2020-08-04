if [[ $1 == "" ]]; then
    echo "Exiting"
    exit
fi
APIM_HOME=$1
cp -rf ./backups/default/api/* $APIM_HOME/repository/deployment/server/synapse-configs/default/api/
cp -rf ./backups/default/inbound-endpoints/* $APIM_HOME/repository/deployment/server/synapse-configs/default/inbound-endpoints/
cp -rf ./backups/default/sequences/* $APIM_HOME/repository/deployment/server/synapse-configs/default/sequences/
cp -rf ./backups/executionplans $APIM_HOME/repository/deployment/server/
cp -rf ./backups/default/proxy-services/* $APIM_HOME/repository/deployment/server/synapse-configs/default/proxy-services/
# cp -rf $APIM_HOME/repository/tenants ./backups/