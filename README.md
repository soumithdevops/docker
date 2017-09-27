# Docker Commands

RUN DOCKER IMAGE :-
---------------------
docker run helloworld

RUN DOCKER IMAGE IN INTERACTIVE TERMINAL :-
--------------------------------------------
docker run -it <image-name>:<tag> /bin/bash
	e.g :- docker run -it ubuntu:14.04 /bin/bash
	
LIST RUNNING CONTAINERS :-
----------------------------
docker ps

LIST ALL CONTAINERS :-
----------------------------
docker ps -a

LIST IMAGES :-
---------------
docker images

CREATE IMAGES :-
-------------------
docker commit <container-id> <repository>
	e.g :- docker commit decf0994f7fb gautamborkar/curl:1.0
	
DOCKER FILE :-
-------------------	
FROM <image>
RUN <command 1>
RUN <command 2>
CMD <command>
	e.g :- FROM ubuntu:14.04
		   RUN apt-get update
		   RUN apt-get install curl \
							   vim
		   CMD ping 127.0.0.1 -c 30 or CMD ["ping","127.0.0.1","-c","30"] or ENTRYPOINT ["ping"]
		   VOLUME /myvol1 or VOLUME /myvol1 /myvol2  or VOLUME ["myvol1","myvol2"]
		   EXPOSE 80 443
	OR 
FROM <image>
RUN <command 1> && <command 2>
	e.g :- FROM ubuntu:14.04
		   RUN apt-get update && apt-get install curl \
							                     vim
           CMD ping 127.0.0.1 -c 30												 
												 
BUILD DOKCER IMAGE FROM DOCKER FILE :-
-----------------------------------------
docker build -t <repository>:<tag> <path>
	e.g. docker build -t gautamborkar/vim:1.0 .
	
GET DOCKER TERMINAL ACCESS :-
---------------------------------
docker exec -it [container-id]	/bin/bash

DELETING CONTAINERS :-
-----------------------
docker rm [container-name]

DELETING IMAGES :-
-------------------
docker rmi [image ID]
	OR
docker rmi [repo:tag]

PUSH IMAGES TO REPOSITORIES :-
-------------------------------
docker push [repo:tag]

TAG IMAGES :-
-------------------------------
docker tag [image ID] [repo:tag]
	OR
docker tag [local repo:tag]	[docker hub repo:tag]

MOUNT VOLUMES :-
-----------------
docker run -d -P -v /myvolume ubuntu:14.04
	OR
docker run -i -t -v /data/src:/test/src ubuntu:14.04	

DOCKER MAP PORTS :-
---------------------
docker run -d -p <host-port>:<container-port> ubuntu:14.04

For auto mapping :-
docker run -d -P ubuntu:14.04

LINKING CONTAINERS :-
-----------------------
docker run -dP --name <container-name> --link <container-name-1>:<alais> ubuntu:14.04
	
ADD PROXY TO DOCKER SERVICE :-
--------------------------------
https://docs.docker.com/engine/admin/systemd/#httphttps-proxy
and also
	/etc/default/docker 
	export http_proxy="http://XXX:YYY@proxy.net:8080/"
	export https_proxy="http://XXX:YYY@proxy.net:8080/"

