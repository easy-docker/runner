FROM gitea/runner-images:ubuntu-latest

RUN apt-get update && apt-get dist-upgrade -y \
    && apt-get install -y openjdk-8-jdk \
    && apt-get clean \
    && rm -r /var/lib/apt/lists/*

RUN wget https://repo.maven.apache.org/maven2/org/apache/maven/apache-maven/3.9.8/apache-maven-3.9.8-bin.tar.gz \
    && tar zxvf apache-maven-3.9.8-bin.tar.gz && rm -f apache-maven-3.9.8-bin.tar.gz \
    && mv apache-maven-3.9.8 /usr/local/ \
    && echo 'export MAVEN_HOME=/usr/local/apache-maven-3.9.8' >> /etc/profile \
    && echo 'export PATH=$PATH:$MAVEN_HOME/bin' >> /etc/profile
