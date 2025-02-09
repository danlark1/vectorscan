#!/bin/bash
export BOOST_VERSION=1_57_0
export BOOST_DOT_VERSION=${BOOST_VERSION//_/.}
export CROSS=<arm-cross-compiler-dir>/bin/aarch64-linux-gnu-
export CROSS_SYS=<arm-cross-compiler-system-dir>

# if [ ! -d "boost_$BOOST_VERSION" ];
# then
# 	wget -O boost_$BOOST_VERSION.tar.gz https://sourceforge.net/projects/boost/files/boost/$BOOST_DOT_VERSION/boost_$BOOST_VERSION.tar.gz/download
# 	tar xf boost_$BOOST_VERSION.tar.gz
# fi
if [ ! -d "pcre-8.41" ];
then
	wget -O pcre-8.41.tar.bz2 https://ftp.pcre.org/pub/pcre/pcre-8.41.tar.bz2
	tar xf pcre-8.41.tar.bz2
	export PCRE_SOURCE=1
fi

export BOOST_PATH=<boost-source-dir>