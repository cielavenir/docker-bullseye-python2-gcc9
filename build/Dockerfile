FROM debian:bullseye
RUN apt update -y && \
    apt install -y gcc-9 wget git devscripts \
                   quilt sharutils libreadline-dev libtinfo-dev libncursesw5-dev tk-dev blt-dev libssl-dev zlib1g-dev libbz2-dev libexpat1-dev libbluetooth-dev locales libsqlite3-dev libffi-dev net-tools time libdb-dev libgdbm-dev help2man xvfb python3-sphinx
RUN ln -sf gcc-9 /usr/bin/gcc && \
    ln -sf gcc-9 /usr/bin/$(uname -m)-linux-gnu-gcc
RUN wget http://deb.debian.org/debian/pool/main/p/python2.7/python2.7_2.7.18.orig.tar.gz && \
    tar xf python2.7_2.7.18.orig.tar.gz && \
    git clone https://salsa.debian.org/cpython-team/python2 && \
    git -C python2 checkout 99d55dc79e3bf3e5274b02fe8bac5b2235ca9943 && \
    cp -a python2/debian Python-2.7.18/debian
RUN cd Python-2.7.18 && \
    debuild -uc -us
RUN dpkg -i *python2.7*.deb
