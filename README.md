# Minimal docker image for running Minecraft server

- Built on [baseimage-docker](http://phusion.github.io/baseimage-docker/)
- Expects a [data volume container](https://docs.docker.com/userguide/dockervolumes/#creating-and-mounting-a-data-volume-container) mounted at /minecraft

Example:

    ## Create a new data volume container for /minecraft
    docker run --name minecraft_data -v /minecraft busybox /bin/sh
    
    ## Grab latest image, mount data volume, and publish minecraft server port
    docker pull akursar/minecraft
    docker run -d -p 25565:25565 --volumes-from minecraft_data akursar/minecraft