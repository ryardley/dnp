source .environment
mkdir -p /var/docker/dnp/logs/
WD=$(pwd)
cd $SUPERVISOR_PATH && ln -s $WD/dnp.conf && cd $WD
run_cmd "docker build -t $APPLICATION_NAME ../"
