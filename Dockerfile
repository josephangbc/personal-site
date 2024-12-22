FROM golang:1.23 AS builder

ARG HUGO_VERSION
ENV HUGO_VERSION=${HUGO_VERSION}

RUN ARCH=$(uname -m) && \
    if [ "$ARCH" = "aarch64" ] || [ "$ARCH" = "arm64" ]; then \
        ARCH_SUFFIX="ARM64"; \
    else \
        ARCH_SUFFIX="64bit"; \
    fi && \
    wget https://github.com/gohugoio/hugo/releases/download/v${HUGO_VERSION}/hugo_extended_withdeploy_${HUGO_VERSION}_Linux-${ARCH_SUFFIX}.tar.gz -O /tmp/hugo.tar.gz

RUN tar -xf /tmp/hugo.tar.gz -C /usr/local/bin/

RUN hugo version

WORKDIR /src
COPY . .

RUN hugo --minify

FROM nginx:alpine
COPY --from=builder /src/public /usr/share/nginx/html

# Expose the default port for nginx
EXPOSE 80
