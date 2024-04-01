ARG IMAGE=ubuntu:22.04@sha256:2b7412e6465c3c7fc5bb21d3e6f1917c167358449fecac8176c6e496e5c1f05f
FROM ${IMAGE}
SHELL ["/bin/bash", "-lEueo", "pipefail", "-c"]

# copy global apt, dpkg and deb configurations
ENV DEBIAN_FRONTEND=noninteractive
COPY conf/aptconf.conf /etc/apt/apt.conf.d/
COPY conf/dpkgconf.conf /etc/dpkg/dpkg.cfg.d/

# copy helper
COPY helper /usr/bin/

RUN \
# install stuff
helper install_base_packages \
&& helper install_docker \
&& helper install_precommit \
# delete temporary files
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin

# RUN \
# # update repo sources
# apt-get update \
# # upgrade base packages
# && apt-get upgrade \
# # install base packages
# && apt-get install ca-certificates curl git openssh-client jq \
# # install nvm
# # && PROFILE=/dev/null bash -c 'curl -fsSL -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.5/install.sh | bash -' \
# # install pyenv
# # && curl -fsSL -o- https://pyenv.run | bash - \
# # install rbenv
# # && apt-get install rbenv \
# # install docker engine and docker-compose
# && apt-get install ca-certificates gnupg lsb-release \
# && mkdir -p /etc/apt/keyrings \
# && curl -fsSL -o- https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg \
# && echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null \
# && apt-get update \
# && apt-get install docker-ce-cli \
# # && curl -fsSL -o- https://get.docker.com | bash - \
# && compose_ver=$(curl -fsSL https://api.github.com/repos/docker/compose/releases/latest | jq -r '.tag_name') \
# && curl -fsSL https://github.com/docker/compose/releases/download/$compose_ver/docker-compose-linux-x86_64 -o /usr/local/bin/docker-compose \
# && ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose \
# && chmod +x /usr/bin/docker-compose \
# # install python and pre-commit
# && apt-get install python3-full python3-pip \
# && pip install --no-cache-dir --upgrade pip setuptools wheel pre-commit -q \
# # delete temporary files
# && apt-get clean \
# && rm -rf /var/lib/apt/lists/* /var/cache/apt/*.bin

# copy default shell configurations
COPY .bashrc /root/
COPY .bash_profile /root/

# copy default git configuration
COPY .gitconfig /root/.gitconfig

ENTRYPOINT ["/bin/bash", "-l"]
