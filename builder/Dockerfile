FROM debian:stable

RUN dpkg --add-architecture i386 && apt-get update \
    && apt-get install -y --no-install-recommends \
    bc build-essential bzr ca-certificates cpio cvs file gcc-multilib git \
    libc6:i386 libncurses5-dev locales mercurial rsync subversion unzip wget \
    && sed -i 's/# \(en_US.UTF-8\)/\1/' /etc/locale.gen \
    && /usr/sbin/locale-gen

ARG BUILD_UID=1000

RUN adduser --uid $BUILD_UID build && mkdir /src && chown build /src

USER build

WORKDIR /src
