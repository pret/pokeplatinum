#!/bin/bash
PROJECT=pokeplatinum

#Parse args
if [ "$#" -lt 1 ]; then
    echo "Usage: ./drun.sh {command}"
    echo "use --interactive instead of {command} for an interactive shell."
    exit 1
fi

FIRSTARG=1
INTERACTIVE=0
DOCKERFILENAME=tools/docker/Dockerfile

# Interactive shell
if [ "${!FIRSTARG}" = "--interactive" ]; then
    FIRSTARG=$FIRSTARG+1
    INTERACTIVE=1
fi

IMAGENAME=$PROJECT-build

# Build command variable
COMMAND=""
for (( i=$FIRSTARG; i<=$#; i+=1 ))
do
    COMMAND=$COMMAND"${!i} "
done

# Check if container image needs to be built
if [ "$(docker images -q $IMAGENAME)" == "" ]
then
    echo "Building container image $IMAGENAME"
    docker build -t $IMAGENAME -f $DOCKERFILENAME .
fi

mkdir -p ./.fontconfig_cache

# Start an interactive shell
if [ $INTERACTIVE -eq 1 ]; then
docker run -it --user $(id -u):$(id -g) \
           --env DISPLAY=$DISPLAY \
           --env DEVKITPRO=/opt/devkitpro \
           -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
           --device /dev/fuse \
           --cap-add SYS_ADMIN \
           --mount type=bind,src=./,target=/repo \
           $IMAGENAME
exit 0
fi

# Run command in container
docker run --user $(id -u):$(id -g) \
           --env DISPLAY=$DISPLAY \
           --env DEVKITPRO=/opt/devkitpro \
           -v /tmp/.X11-unix:/tmp/.X11-unix:ro \
           --device /dev/fuse \
           --cap-add SYS_ADMIN \
           --mount type=bind,src=./,target=/repo \
           $IMAGENAME sh -c "cd /repo && $COMMAND"

