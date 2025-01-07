#!/bin/sh

devcontainer up \
  --docker-path podman \
  --buildkit never \
  --remove-existing-container \
  --skip-post-attach \
  --additional-features '
    {
      "ghcr.io/duduribeiro/devcontainer-features/neovim:1.0.1": {},
      "ghcr.io/devcontainers-extra/features/fzf:1": {}
    }' \
  --workspace-folder . \
  --mount "type=bind,source=$HOME/.config,target=/root/.config" | jq
devcontainer exec \
  --docker-path podman \
  --workspace-folder . \
  nvim
