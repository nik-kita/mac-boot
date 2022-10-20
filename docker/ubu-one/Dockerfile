from ubuntu:latest

run apt update -y
run apt upgrade -y

run apt install curl -y
run apt install git -y

run apt install ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen make wget -y

run git clone https://github.com/neovim/neovim
run cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
run cd neovim && make install

run apt install software-properties-common -y
run apt-add-repository ppa:fish-shell/release-3 -y
run apt update -y
run apt install fish -y

# TODO
# curl -fsSL https://fnm.vercel.app/install | bash
# or may be 'fish' instead of 'bash'

# Rust!
run curl https://sh.rustup.rs -sSf | sh -s -- -y
# next command may have problems to executes during docker 'build'...
# so sipmly don't forget to do it manualy when you will enter to the container
# -------------------------
# source "$HOME/.cargo/env"
# -------------------------

