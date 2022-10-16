echo "[ -f ~/.fzf.bash ] && source ~/.fzf.bash" > ~/.bashrc

# Install brew if not already =====================================================================
brew help || needBrew=true

if [[ $needBrew ]];
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    echo '# Set PATH, MANPATH, etc., for Homebrew.' >> /Users/neo-nik/.zprofile
    echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/neo-nik/.zprofile
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    echo """
 ______________________________________________________________________
/                                                                      \\
|      brew is already installed                                       x|
\                                                                      /
 ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
       \   ^__^
        \  (oo)\_______
           (__)\       )\\
               ||----w |
               ||     ||
    """
fi
# -------------------------------------------------------------------------------------------------

# Install fish if not already =====================================================================
fish -v || needFish=true

if [[ $needFish ]];
then
    brew install fish
    fish -c date
else
    echo """
 ______________________________________________________________________
/                                                                      \\
|     fish is already installed                                        |
\                                                                      /
 ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
       \   ^__^
        \  (oo)\_______
           (__)\       )\\
               ||----w |
               ||     ||
    """
fi
# -------------------------------------------------------------------------------------------------

# Install nvm if not already ======================================================================
nvm -v || needNvm=true


if [[ $needNvm ]];
then
    mkdir ~/.nvm && touch ~/.bash_profile
    echo """
export PATH="/usr/local/bin:\$PATH"

export NVM_DIR=~/.nvm
source $(brew --prefix nvm)/nvm.sh
    """ > ~/.bash_profile
    brew install nvm
    cd
    git clone https://github.com/edc/bass.git
    cd bass && make install
    cd
    touch ~/.config/fish/functions/nvm.fish
    echo """
function nvm
bass source ~/.nvm/nvm.sh --no-use ';' nvm \$argv
end
    """ > ~/.config/fish/functions/nvm.fish
    source ~/.bash_profile
else
    echo """
 ______________________________________________________________________
/                                                                      \\
|     nvm is already installed                                         |
\                                                                      /
 ▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔▔
       \   ^__^
        \  (oo)\_______
           (__)\       )\\
               ||----w |
               ||     ||
    """
fi
# -------------------------------------------------------------------------------------------------