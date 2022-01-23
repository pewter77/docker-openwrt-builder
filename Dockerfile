FROM ubuntu:focal

ARG DEBIAN_FRONTEND="noninteractive"

RUN apt-get update &&\
    apt-get install -y \
    antlr3 \
    asciidoc \
    autoconf \
    automake \
    autopoint \
    binutils \
    build-essential \
    bzip2 \
    curl \
    device-tree-compiler \
    flex \
    g++-multilib \
    gawk \
    gcc-multilib \
    gettext \
    git \
    git-core \
    gperf \
    lib32gcc1 \
    libc6-dev-i386 \
    libelf-dev \
    libglib2.0-dev \
    libncurses5-dev \
    libssl-dev \
    libtool \
    libz-dev \
    msmtp \
    p7zip \
    p7zip-full \
    patch \
    python2.7 \
    python3 \
    qemu-utils \
    rsync && \
    subversion \
    sudo \
    swig \
    texinfo \
    uglifyjs \
    unzip \
    upx \
    wget \
    xmlto \
    zlib1g-dev \
    apt-get clean && \
    useradd -m user && \
    echo 'user ALL=NOPASSWD: ALL' > /etc/sudoers.d/user

USER user
WORKDIR /home/user

# set dummy git config
RUN git config --global user.name "user" && git config --global user.email "user@example.com"
