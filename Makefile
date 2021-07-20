#--------------------------------------------------------------------
# User Editable Interface
#--------------------------------------------------------------------

# Dir mapped into docker container
SOURCE     := .

# Docker image name
IMAGE      := ubuntu:18.04

# Docker container name
CONTAINER  := csapp_env


#--------------------------------------------------------------------
# Get the LOCALIP of host for DISPLAY of different OS
#--------------------------------------------------------------------

ifeq ($(OS),Windows_NT)
#   The default dockerNAT for windows is 10.0.75.1
#   you can change it in docker for windows Application
	WIN_DOCKERNAT := 10.0.75.1
	LOCALIP := $(WIN_DOCKERNAT)
else
	UNAME_S := $(shell uname -s)
	ifeq ($(UNAME_S),Linux)
		LOCALIP := 
	endif
	ifeq ($(UNAME_S),Darwin)
		LOCALIP := docker.for.mac.localhost
	endif
endif


#--------------------------------------------------------------------
# Docker flags and container settings
#--------------------------------------------------------------------

# container's work dir
WORKDIR	   := /csapp

# map SOURCE into WORKDIR
VOLFLAGS   := -v $(CURDIR)/$(SOURCE):$(WORKDIR)

# map X11-unix dir
# GVOLFLAGS  := -v /tmp/.X11-unix:/tmp/.X11-unix

# Bash in container
BASH       := /bin/bash

V          := @


DFLAGS     := --privileged -itd $(VOLFLAGS)
# allow gdb debug
DFLAGS_S     := $(DFLAGS) --security-opt seccomp=unconfined

docker_run          = docker run $(DFLAGS_S) --name $(CONTAINER) $(IMAGE)
docker_exec         = docker exec -it $(CONTAINER)

# docker_bash = $(docker_run) $(BASH) -c "$(1)"


# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
# Make Tasks
# >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

# init task
init: build run

# Build the container
build:
	$(V)docker build -t $(IMAGE) .

run:
# $(V)docker container run -it $(VOLFLAGS) --name=$(CONTAINER) $(IMAGE) $(BASH)
	$(V)$(docker_run) $(BASH)


# Get the Ubuntu develop environment
exec:
	$(V)$(docker_exec) $(BASH)

start:
	$(V)docker start $(CONTAINER)

stop:
	$(V)docker stop $(CONTAINER)

rm:
	$(V)docker rm $(CONTAINER)


# Container make command copies

clean:
	$(V)$(docker_exec) make clean

# ...
