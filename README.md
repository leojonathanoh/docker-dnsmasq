# docker-dnsmasq

[![github-actions](https://github.com/theohbrothers/docker-dnsmasq/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-dnsmasq/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-dnsmasq?style=flat-square)](https://github.com/theohbrothers/docker-dnsmasq/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-dnsmasq/latest)](https://hub.docker.com/r/theohbrothers/docker-dnsmasq)

Dockerized [dnsmasq](https://dnsmasq.org/).

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
| `:2.90`, `:latest` | [View](variants/2.90) |
| `:2.86` | [View](variants/2.86) |

## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```
