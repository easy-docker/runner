FROM seepine/ubuntu:act

RUN apt-get update && apt-get dist-upgrade -y \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*
