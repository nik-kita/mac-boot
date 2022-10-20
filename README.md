# install 'homebrew', 'nvm' and 'fish' on your mac:
> also add them to your PATH etc.
* run bash script:
  ```
  bash src/brew-fish-nvm.install.sh
  ```
* [or manualy executing commands in terminal](./cli-readme.md)

# make docker container with 'neovim' (0.9) and 'fish':
* cd to `src/docker/ubu-one` and run:
  ```
  docker build -t ubu-nvim . && docker start -t -d --name one ubu-nvim && docker exec -it $(docker ps --all -q) fish
  ```
  > the script above may have mistakes... but it is straitforward so im sure it will be easy to fix it... but i hope it's ok :D

