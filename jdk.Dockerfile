FROM dockercache.dev.ng8877.com/gitea/runner-images:ubuntu-latest

RUN apt-get update && apt-get dist-upgrade -y \
    && apt-get install -y openjdk-8-jdk \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
