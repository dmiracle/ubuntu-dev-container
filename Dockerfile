FROM python:latest

# ARG DEBIAN_FRONTEND=noninteractive
# ARG TERM=xterm

RUN apt-get -y update 
RUN apt-get install -y --no-install-recommends apt-utils
RUN apt-get -y install git
RUN apt-get -y install python3
RUN apt-get -y install python3-pip

RUN apt-get update && apt-get install -y --no-install-recommends \
		ca-certificates \
		curl \
		netbase \
		wget \
	&& rm -rf /var/lib/apt/lists/*