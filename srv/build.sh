source .environment
mkdir -p /var/docker/dnp/logs/
WD=$(pwd)
CURRENT_SCRIPT=$(ls $SUPERVISOR_PATH/dnp.conf)
if [ -n "$CURRENT_SCRIPT" ]; then rm $SUPERVISOR_PATH/dnp.conf; fi
cd $SUPERVISOR_PATH && ln -s $WD/dnp.conf && cd $WD
run_cmd "docker build -t $APPLICATION_NAME ../"
