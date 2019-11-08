FROM golang:alpine

ARG REPO_URL=github.com/jaksi/sshesame

RUN apk add --update --no-cache git
RUN /usr/local/go/bin/go get -u ${REPO_URL}

EXPOSE 2022

ENTRYPOINT ["/go/bin/sshesame", "-listen_address", "0.0.0.0", "-server_version", "SSH-2.0-OpenSSH", "-json_logging"]
