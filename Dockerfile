FROM openjdk:11-slim

# Install curl
RUN apt-get update && apt-get install -yqq curl && \
    apt-get clean && rm -r /var/lib/apt/lists/*

# Install RDS certificates and update the store
ADD https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem /usr/local/share/ca-certificates/rds-combined-ca-bundle.crt
RUN update-ca-certificates

# Get paulp's SBT runner
ADD https://git.io/sbt /usr/local/bin/sbt
RUN chmod +x /usr/local/bin/sbt
