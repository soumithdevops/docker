FROM gautamborkar/ubuntu:14.04_1
RUN apt-get -y update && apt-get -y install curl \
				      vim
CMD vi test
ENTRYPOINT ["ping"]

