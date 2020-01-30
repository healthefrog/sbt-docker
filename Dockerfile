FROM oracle/graalvm-ce:19.3.1-java11

# Install RDS certificates and update the store
ADD https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem /usr/local/share/ca-certificates/rds-combined-ca-bundle.crt
RUN update-ca-certificates

# Get paulp's SBT runner
ADD https://git.io/sbt /usr/local/bin/sbt
RUN chmod +x /usr/local/bin/sbt
