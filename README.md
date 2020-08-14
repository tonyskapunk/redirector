[![Docker Repository on Quay](https://quay.io/repository/tonyskapunk/redirector/status "Docker Repository on Quay")](https://quay.io/repository/tonyskapunk/redirector)
[![Docker Repository on GitHub](https://img.shields.io/github/workflow/status/tonyskapunk/redirector/Docker?label=docker&style=plastic)](https://github.com/tonyskapunk/redirector/packages)
[![Go build](https://img.shields.io/github/workflow/status/tonyskapunk/redirector/Go?style=plastic)](https://github.com/tonyskapunk/redirector/actions?query=workflow%3AGo)
[![License MIT](https://img.shields.io/github/license/tonyskapunk/redirector?style=plastic)](https://github.com/tonyskapunk/redirector/blob/main/LICENSE)
[![Go Version](https://img.shields.io/github/go-mod/go-version/tonyskapunk/redirector)]()

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
