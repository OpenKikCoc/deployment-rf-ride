#!/bin/sh

# sed -i 's/dl-cdn.alpinelinux.org/mirrors.ustc.edu.cn/g' /etc/apk/repositories

# build from local Dockerfile
docker build --no-cache -t binacslee/rf-ride .

# for process
docker run -it --rm -v $PWD:/work -w /work -p 10000:10000 --name rf-ride binacslee/rf-ride bash
# $ entry ride.py

# for daemon
# docker run -dit -v $PWD:/work -w /work -p 10000:10000 --name rf-ride binacslee/rf-ride bash
# $ entry ride.py

# for run ride.py directly
# docker run -it --rm -v $PWD:/work -w /work -p 10000:10000 --name rf-ride binacslee/rf-ride entry ride.py
