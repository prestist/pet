# pet

[![quay.io repository](https://img.shields.io/badge/updated-2026--03--25-green)](https://quay.io/repository/spresti/pet)

This is my [Toolbx](https://containertoolbx.org/) container
that I use everyday for hacking on
[CoreOS](https://github.com/coreos) projects. I reprovision
it every week.

Forked from [jlebon/pet](https://github.com/jlebon/pet) with
additions for host-spawn, AI coding tools (OpenCode, xoc),
and additional development packages.

To use:

```
toolbox create --image quay.io/spresti/pet
toolbox enter pet
```

For Red Hat engineers, once connected to the VPN, you'll
want to run `rhsetup` to install certs and `rhpkg`.

## Additional features over upstream

- **host-spawn** with wrapper scripts for `podman`, `docker`,
  `flatpak`, and `systemctl`
- **AI tools**: [OpenCode](https://github.com/anomalyco/opencode),
  [xoc](https://github.com/jlebon/dotfiles) (Claude Code in containers,
  from [jlebon's dotfiles](https://github.com/jlebon/dotfiles))
- **GPG**: pinentry-curses configured for terminal-based signing
- **Extra dev packages**: Go, Rust (with rust-analyzer), Python,
  Node.js, plus build essentials (gcc, cmake, openssl-devel)

This repository runs a weekly
[GitHub Actions job](https://github.com/prestist/pet/actions/workflows/build.yml)
to update a
[container image](https://quay.io/repository/spresti/pet)
hosted on [Quay.io](https://quay.io/) (that workflow is
heavily based on the one from
[this repo](https://github.com/coreos/mkpasswd-container)).
