FROM ghcr.io/graalvm/graalvm-ce:ol8-java11-21.0.0.2

# Install RDS certificates and update the store
ADD https://s3.amazonaws.com/rds-downloads/rds-combined-ca-bundle.pem /etc/pki/ca-trust/source/anchors/rds-combined-ca-bundle.crt
RUN update-ca-trust

# Get paulp's SBT runner
ADD https://git.io/sbt /usr/local/bin/sbt
RUN chmod +x /usr/local/bin/sbt
