# Install brew if not already =====================================================================
brew help || needBrew=true

if [[ $needBrew ]];
then
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
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


# -------------------------------------------------------------------------------------------------