# min usage:
## install
* homebrew
    ```
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```
* fish
    ```
    brew install fish
    
    ```
* nvm
    ```
    brew install nvm
    ```
* nvm + bash
    ```
    mkdir ~/.nvm && touch ~/.bash_profile && \
    echo """
    export PATH="/usr/local/bin:\$PATH"

    export NVM_DIR=~/.nvm
    source $(brew --prefix nvm)/nvm.sh
    """ > ~/.bash_profile && \
    bash && source ~/.bash_profile
    ```
* fish + bash
    ```
    cd && \
    git clone https://github.com/edc/bass.git && \
    cd bass && make install && cd
    ```
* nvm + fish
    ```
    touch ~/.config/fish/functions/nvm.fish && \
    echo """
    function nvm
    bass source ~/.nvm/nvm.sh --no-use ';' nvm \$argv
    end
    """ > ~/.config/fish/functions/nvm.fish
    ```
### uninstall

```
cd && \
brew uninstall fish && \
rm -fr /opt/homebrew/etc/fish && \
rm -fr .config/fish && \
rm -fr .nvm && \
rm -fr bass && rm .bash_profile && \
brew uninstall nvm && \
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" && \
rm .zprofile && \
echo RM COMPLEED
```
