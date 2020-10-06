FROM ubuntu:20.04

ENV DEBIAN_FRONTEND="noninteractive"

RUN apt-get update && apt-get install -y --no-install-recommends \
	vim \
	python3.6 \
	awscli \
	openjdk-11-jre \
	curl \
	&& rm -rf /var/lib/apt/lists/*

# install okta-aws-cli-assume-role tool
RUN curl 'https://raw.githubusercontent.com/oktadeveloper/okta-aws-cli-assume-role/master/bin/install.sh' | bash