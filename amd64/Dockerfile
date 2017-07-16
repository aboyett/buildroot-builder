FROM quay.io/agb/buildroot-builder:builder_tree-b2375497008a534b6e3f014a2f55632661d990da

RUN git clone https://github.com/buildroot/buildroot

ARG CONFIG=qemu_x86_64_musl_defconfig
ARG GIT_TAG=2017.05

COPY configs/$CONFIG buildroot/configs

RUN cd buildroot && git checkout $GIT_TAG && make $CONFIG && make toolchain

WORKDIR buildroot
