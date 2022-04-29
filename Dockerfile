FROM debian:buster

# Install curl
RUN apt-get update \
    && apt-get install -y --no-install-recommends curl apt-transport-https ca-certificates \
    && rm -rf /var/lib/apt/lists/*

# Install crdb
RUN curl https://binaries.cockroachdb.com/cockroach-v21.2.9.linux-amd64.tgz \
    | tar -xz && cp -i cockroach-v21.2.9.linux-amd64/cockroach /usr/local/bin/