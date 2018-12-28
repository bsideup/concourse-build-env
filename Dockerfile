FROM openjdk:11-jdk

RUN apt-get update && \
    curl -fsSL https://get.docker.com -o get-docker.sh && \
    sh -ex get-docker.sh && \
    apt-get install -y build-essential \
    rm -rf /var/lib/apt/lists/* && \
    mkdir -p /root/.docker && \
    echo "{}" > /root/.docker/config.json
    
ADD https://raw.githubusercontent.com/r2dbc/r2dbc-postgresql/f50d5d7614acda3df0b754d639ce6d124e52bd0f/ci/docker-lib.sh /docker-lib.sh
