# Dev Containers

## Prerequisites

```shell
brew install devcontainer
```

## Getting Started

```shell
docker-compose run --rm -it devcontainer
devcontainer up --workspace-folder $PWD
devcontainer exec --workspace-folder $PWD /bin/bash -l
```

If you need any dependency manager, user `helper` command within the devcontainer. Remember to execute `bash -l` after installing any dependency manager.

## Test

```shell
docker-compose run --rm --build test
```

## How To Use

1. Copy [`./.devcontainer/devcontainer.json.example`](./.devcontainer/devcontainer.json.example) to `./.devcontainer/devcontainer.json` within your project
2. Open [registry settings](https://github.com/orgs/dy-interviews/packages/container/devcontainer/settings) and grant your project read permission
3. Head to your project and create your codespace using either:
   - [web browser](https://docs.github.com/en/codespaces/developing-in-codespaces/creating-a-codespace-for-a-repository#creating-a-codespace-for-a-repository)
   - [github cli](https://docs.github.com/en/codespaces/developing-in-codespaces/creating-a-codespace-for-a-repository?tool=cli)
   - [vscode](https://code.visualstudio.com/docs/devcontainers/containers)

## References

- <https://containers.dev/implementors/json_reference/>
- <https://containers.dev/implementors/json_schema/>
- <https://github.com/devcontainers/images/tree/main/src/base-ubuntu>
- <https://containers.dev/features>
- <https://code.visualstudio.com/docs/devcontainers/devcontainer-cli>
- <https://github.com/microsoft/vscode-dev-containers>
- <https://github.com/codespaces>
- <https://code.visualstudio.com/remote/advancedcontainers/add-nonroot-user>
- <https://medium.com/@john.shaw.zen/visual-code-devcontainer-using-custom-image-in-aws-ecr-e0a9522c2d3c>
- <https://github.com/orgs/dy-interviews/packages/container/devcontainer/settings>
- <https://docs.github.com/en/codespaces/developing-in-codespaces/default-environment-variables-for-your-codespace#list-of-default-environment-variables>
- <https://docs.github.com/en/codespaces/managing-your-codespaces/managing-secrets-for-your-codespaces>
- <https://containers.dev/implementors/features/>
- <https://code.visualstudio.com/docs/devcontainers/containers>
- <https://code.visualstudio.com/docs/devcontainers/create-dev-container>