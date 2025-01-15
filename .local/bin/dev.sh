#!/bin/sh

devcontainer up \
  --docker-path podman \
  --buildkit never \
  --remove-existing-container \
  --skip-post-attach \
  --additional-features '
    {
      "ghcr.io/devcontainers/features/common-utils:2.4.2": {
        "username": "none",
        "upgradePackages": false
      },
      "ghcr.io/duduribeiro/devcontainer-features/neovim:1.0.1": {},
      "ghcr.io/devcontainers-extra/features/fzf:1.0.14": {},
      "ghcr.io/GeorgOfenbeck/features/lazygit-linuxbinary:1.0.0": {}
    }' \
  --workspace-folder . \
  --mount "type=bind,source=$HOME/.config,target=/root/.config" \
  --mount "type=bind,source=$HOME/.gitconfig,target=/root/.gitconfig" \
  --mount "type=bind,source=$HOME/.ssh,target=/root/.ssh" | jq
devcontainer exec \
  --docker-path podman \
  --workspace-folder . \
  nvim
