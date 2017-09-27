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
	
ADD PROXY TO DOCKER SERVICE :-
--------------------------------
https://docs.docker.com/engine/admin/systemd/#httphttps-proxy
