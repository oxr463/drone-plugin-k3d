FROM alpine:latest

COPY entrypoint.sh /usr/local/bin/drone-plugin-k3d

RUN apk update && \
    apk add bash \
            curl && \
    chmod +x /usr/local/bin/drone-plugin-k3d && \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" && \
    install -o root -g root -m 0755 kubectl /usr/local/bin/kubectl && \
    curl -s https://raw.githubusercontent.com/k3d-io/k3d/main/install.sh | bash

ENTRYPOINT ["/usr/local/bin/drone-plugin-k3d"]
