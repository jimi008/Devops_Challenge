FROM alpine
LABEL maintainer="Jamil Ahmed <me@jamilahmed.net>"

RUN wget -O /tmp/terraform.zip https://releases.hashicorp.com/terraform/1.4.5/terraform_1.4.5_linux_amd64.zip && \
    unzip /tmp/terraform.zip -d /
#RUN apk add --no-cache ca-certificates curl
USER nobody

ENTRYPOINT [ "/terraform" ]

