@"
# docker-dnsmasq

[![github-actions](https://github.com/theohbrothers/docker-dnsmasq/workflows/ci-master-pr/badge.svg)](https://github.com/theohbrothers/docker-dnsmasq/actions)
[![github-release](https://img.shields.io/github/v/release/theohbrothers/docker-dnsmasq?style=flat-square)](https://github.com/theohbrothers/docker-dnsmasq/releases/)
[![docker-image-size](https://img.shields.io/docker/image-size/theohbrothers/docker-dnsmasq/latest)](https://hub.docker.com/r/theohbrothers/docker-dnsmasq)

Dockerized [dnsmasq](https://dnsmasq.org/).

## Tags

| Tag | Dockerfile Build Context |
|:-------:|:---------:|
$(
($VARIANTS | % {
    if ( $_['tag_as_latest'] ) {
@"
| ``:$( $_['tag'] )``, ``:latest`` | [View](variants/$( $_['tag'] )) |

"@
    }else {
@"
| ``:$( $_['tag'] )`` | [View](variants/$( $_['tag'] )) |

"@
    }
}) -join ''
)

"@

@'
## Development

Requires Windows `powershell` or [`pwsh`](https://github.com/PowerShell/PowerShell).

```powershell
# Install Generate-DockerImageVariants module: https://github.com/theohbrothers/Generate-DockerImageVariants
Install-Module -Name Generate-DockerImageVariants -Repository PSGallery -Scope CurrentUser -Force -Verbose

# Edit ./generate templates

# Generate the variants
Generate-DockerImageVariants .
```

'@
