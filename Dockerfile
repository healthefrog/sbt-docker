FROM openjdk:8
ADD https://git.io/sbt /usr/local/bin/sbt
RUN chmod +x /usr/local/bin/sbt
