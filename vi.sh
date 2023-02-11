#!/bin/bash

Python3_VERSION=python3.9
SUDO=sudo

$SUDO apt install -y git python3-all libpython3-dev curl wget pkg-config unzip
$SUDO apt install -y libffi-dev make automake autoconf build-essential libncurses-dev bear
git clone https://gitee.com/wangjiaming0909/vim
cd vim && git checkout  v9.0.0000


./configure --with-features=huge \
  --enable-multibyte \
  --enable-python3interp=dynamic \
  --with-python3-config-dir=/usr/lib/$Python3_VERSION/config-3.9-x86_64-linux-gnu \
  --with-python3-command=$Python3_VERSION \
  --enable-cscope \
  --enable-gui=auto \
  --enable-gtk2-check \
  --enable-fontset \ --enable-largefile \
  --disable-netbeans \
  --with-compiledby="jiaming" \
  --enable-fail-if-missing \
  --prefix=/usr && make -j8 \
  && $SUDO make install

cd .. 
cp .vimrc ~/

curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

#git clone https://gitee.com/wangjiaming0909/ctags
#cd ctags && ./autogen.sh &&  mkdir -p build && cd build  && ../configure && make -j12 && sudo make install
#cd ../../

cp ./coc-settings.json ~/.vim

wget https://github.com/clangd/clangd/releases/download/15.0.0/clangd-linux-15.0.0.zip
wget https://nodejs.org/dist/v18.14.0/node-v18.14.0-linux-x64.tar.xz

tar -xf ./node-v18.14.0-linux-x64.tar.xz
unzip ./clangd-linux-15.0.0.zip


