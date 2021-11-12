ARG JULIA_VERSION=1.6
ARG ROOT_PASSWORD=root

FROM julia:${JULIA_VERSION}

# Install the required packages
RUN apt-get update && apt-get upgrade -y

RUN apt-get install -y \
  apt-utils \
  gcc \
  g++ \
  openssh-server \
  cmake \
  build-essential \
  gdb \
  gdbserver \
  rsync \
  vim \
  locales

RUN apt-get install -y \
  bzip2 \
  wget \
  gnupg \
  dirmngr \
  apt-transport-https \
  ca-certificates \
  tmux

RUN apt-get clean

# Setup SSH
RUN mkdir /var/run/sshd && \
  echo 'root:${ROOT_PASSWORD}' |chpasswd && \
  sed -ri 's/^#?PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config && \
  sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config && \
  mkdir /root/.ssh

# Directory Cleanup
RUN rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Exposing Port 22 for ssh server
# Exposing Port 7777 for gdb server
EXPOSE 22 7777

########################################################
# Add custom packages and development environment here
########################################################

########################################################

CMD ["/usr/sbin/sshd", "-D"]

# Add support for English keybord
RUN touch /etc/locale.gen
RUN echo 'en_US.UTF-8 UTF-8' >> /etc/locale.gen
RUN locale-gen
