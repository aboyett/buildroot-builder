FROM quay.io/agb/buildroot-builder:builder/tree-4da42e73c0578a10e79dc54dd1893a677c26a5ea

RUN git clone https://github.com/buildroot/buildroot

ARG CONFIG=qemu_x86_64_musl_defconfig
ARG GIT_TAG=2017.05

COPY configs/$CONFIG buildroot/configs

RUN cd buildroot && git checkout $GIT_TAG && make $CONFIG && make toolchain

WORKDIR buildroot
