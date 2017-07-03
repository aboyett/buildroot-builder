FROM debian:stable

RUN dpkg --add-architecture i386 && apt-get update \
    && apt-get install -y --no-install-recommends \
    build-essential locales bc ca-certificates file rsync gcc-multilib \
    git bzr cvs mercurial subversion libc6:i386 unzip wget cpio \
    && sed -i 's/# \(en_US.UTF-8\)/\1/' /etc/locale.gen \
    && /usr/sbin/locale-gen
