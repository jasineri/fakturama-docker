docker build -t jasineri/fakturama:1.0 .
docker run -it --rm \
       --name Fakturama \
       --net=host \
       -e DISPLAY=$DISPLAY \
       -v /tmp/.X11-unix \
       -v ~/.Xauthority:/root/.Xauthority \
       -v ~/.fakturama2:/root/.fakturama2 \
       -v ~/fakturama:/root/fakturama \
       jasineri/fakturama:1.0