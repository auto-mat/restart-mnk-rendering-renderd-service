FROM alpine:3.18.4

LABEL authors="Auto*Mat, z. s. auto-mat@auto-mat.cz"
LABEL maintainer="Auto*Mat, z. s. auto-mat@auto-mat.cz"

RUN apk update && apk add --no-cache curl doctl; \
    curl -LO "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl"; \
    chmod +x ./kubectl; \
    mv ./kubectl /usr/local/bin/kubectl;
COPY ./restart_renderd_service.sh /usr/local/bin
RUN chmod +x /usr/local/bin/restart_renderd_service.sh
CMD ["/bin/sh"]