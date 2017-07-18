FROM openjdk:8-jdk

# Install Docker client
ARG DOCKER_VERSION=1.13.1
ARG DOCKER_COMPOSE_VERSION=1.14.0
RUN curl -fsSL https://get.docker.com/builds/Linux/x86_64/docker-$DOCKER_VERSION.tgz | tar --strip-components=1 -xz -C /usr/local/bin docker/docker
RUN curl -L --fail https://github.com/docker/compose/releases/download/$DOCKER_COMPOSE_VERSION/run.sh > /usr/local/bin/docker-compose && chmod +x /usr/local/bin/docker-compose
