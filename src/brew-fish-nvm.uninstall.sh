echo =================================================================================================================
cd
brew uninstall fish || echo "=> unable to 'brew uninstall fish'"
brew uninstall nvm || echo "=> unable to 'brew uninstall nvm'"
rm -fr /opt/homebrew/etc/fish || echo "=> unable to 'rm -fr /opt/homebrew/etc/fish'"
rm -fr .config/fish || echo "=> unable to 'rm -fr .config/fish'"
rm -fr .nvm || echo "=> unable to 'rm -fr .nvm'"
rm -fr bass || echo "=> unable to 'rm -fr bass'"
rm .bash_profile || echo "=> unable to 'rm .bash_profile'"
rm .zprofile || echo "=> unable to 'rm .zprofile'"
rm .bashrc || echo "=> unable to 'rm .bashrc'"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)" || echo """\
=> unable to '/bin/bash -c \"\$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/uninstall.sh)'\""""
echo "=> fish-nvm-brew uninstallation completed!"
echo =================================================================================================================
