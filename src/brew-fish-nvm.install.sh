brew help || needBrew=true
if [[ $needBrew ]];
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" || echo """\
=> unable to '/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)\"'\
"""
    eval "$(/opt/homebrew/bin/brew shellenv)" || echo ">>-----> unable to 'eval \"\$(/opt/homebrew/bin/brew shellenv)\"'"
else
    echo ">>-----> brew is already installed"
fi
# -------------------------------------------------------------------------------------------------
fish -v || needFish=true
if [[ $needFish ]];
then
    brew install fish || echo ">>-----> unable to 'brew install fish'"
    fish -c date || echo ">>-----> unable to 'fish -c date'"
else
    echo ">>-----> fish is already installed"
fi
# -------------------------------------------------------------------------------------------------
nvm -v || needNvm=true
if [[ $needNvm ]];
then
    brew install nvm || echo ">>-----> unable to 'brew install nvm'"
    mkdir ~/.nvm || echo ">>-----> unable to 'mkdir ~/.nvm'"
    touch ~/.bash_profile || echo ">>-----> unable to 'touch ~/.bash_profile'"
    echo """\
export PATH="/usr/local/bin:\$PATH"
export PATH="/opt/homebrew/bin:\$PATH"
export NVM_DIR=~/.nvm
source \$(brew --prefix nvm)/nvm.sh\
""" > ~/.bash_profile || echo ">>-----> unable to ... > ~/.bash_profile"
    cd
    git clone https://github.com/edc/bass.git || echo ">>-----> unable to 'git clone https://github.com/edc/bass.git'"
    cd bass || echo ">>-----> unable to 'cd bass'"
    make install || echo ">>-----> unable to 'make install'"
    cd
    touch ~/.config/fish/functions/nvm.fish || echo ">>-----> unable to 'touch ~/.config/fish/functions/nvm.fish'"
    echo """\
function nvm
bass source ~/.nvm/nvm.sh --no-use ';' nvm \$argv
end\
""" > ~/.config/fish/functions/nvm.fish || echo ">>-----> unable to ... > ~/.config/fish/functions/nvm.fish'"
else
    echo ">>-----> nvm is already installed"
fi
# -------------------------------------------------------------------------------------------------
touch ~/.zshrc || echo ">>-----> unable to 'touch ~/.zshrc'"
echo """\
PATH=\"/usr/local/bin:\$PATH\"
export NVM_DIR=~/.nvm
source \$(brew --prefix nvm)/nvm.sh
if [ -f ~/.bash_profile ]; then
  . ~/.bash_profile
fi\
""" > ~/.zshrc || echo ">>-----> unable to ... > ~/.zshrc"
cat .bash_profile > .bashrc || echo ">>-----> unable to 'cat .bash_profile > .bashrc'"
sudo chown $(whoami) /etc/shells
echo "/opt/homebrew/bin/fish" >> /etc/shells
chsh -s /opt/homebrew/bin/fish
sudo chown root /etc/shells
fish
# -------------------------------------------------------------------------------------------------
