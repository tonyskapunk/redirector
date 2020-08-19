[![Docker Repository on Quay](https://quay.io/repository/tonyskapunk/redirector/status "Docker Repository on Quay")](https://quay.io/repository/tonyskapunk/redirector)
[![License MIT](https://img.shields.io/github/license/tonyskapunk/redirector?style=plastic)](https://github.com/tonyskapunk/redirector/blob/main/LICENSE)
[![Go Version](https://img.shields.io/github/go-mod/go-version/tonyskapunk/redirector?style=plastic)](https://github.com/tonyskapunk/redirector/)
![Docker](https://github.com/tonyskapunk/redirector/workflows/Docker/badge.svg)
![Go](https://github.com/tonyskapunk/redirector/workflows/Go/badge.svg)
[![Go Report Card](https://goreportcard.com/badge/tonyskapunk/redirector)](https://goreportcard.com/report/github.com/tonyskapunk/redirector)

# redirector

HTTP redirect to HTTPS

## Running in a container

```bash
podman run -p 8080:8080 quay.io/tonyskapunk/redirector
```

or

```bash
docker run -p 8080:8080 quay.io/tonyskapunk/redirector
```

or

```bash
docker run -p 8080:8080 docker.pkg.github.com/tonyskapunk/redirector/redirector:latest
```
