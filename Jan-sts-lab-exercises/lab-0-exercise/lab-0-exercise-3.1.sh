#!/usr/bin/sh

echo "Start ubuntu and run the script to install curl"
MSYS_NO_PATHCONV=1 docker run -it -v "${PWD}:/usr/src/app" --name docker-ubuntu-test ubuntu sh /usr/src/app/lab-0-exercise-3.2.sh

echo "Startup ubuntu again in attached mode"
docker start -ai docker-ubuntu-test
sleep 3;
docker stop docker-ubuntu-test
docker rm docker-ubuntu-test
