from ubuntu:latest

run apt update -y
run apt upgrade -y

run apt install curl -y
run apt install git -y

run apt install build-essential -y
run curl https://sh.rustup.rs -sSf | sh -s -- -y
run . "$HOME/.cargo/env"

run apt install software-properties-common -y
run add-apt-repository ppa:neovim-ppa/stable -y
run apt update -y

run apt install neovim -y
run bash -c 'curl -s https://raw.githubusercontent.com/lunarvim/lunarvim/master/utils/installer/install.sh'

