from ubuntu:latest

run apt update -y
run apt upgrade -y

run apt install curl -y
run apt install git -y

run apt install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen make -y

run git clone https://github.com/neovim/neovim
run cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
run cd neovim && make install

run apt install software-properties-common -y
run apt-add-repository ppa:fish-shell/release-3 -y
run apt update -y
run apt install fish -y
