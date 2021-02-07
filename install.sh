echo "
░█████╗░██████╗░██╗░░░██╗░█████╗░██╗████████╗  ██████╗░██╗░░██╗██╗███╗░░██╗░██████╗░██████╗░░█████╗░
██╔══██╗██╔══██╗██║░░░██║██╔══██╗██║╚══██╔══╝  ██╔══██╗██║░░██║██║████╗░██║██╔════╝░██╔══██╗██╔══██╗
███████║██║░░██║╚██╗░██╔╝███████║██║░░░██║░░░  ██║░░██║███████║██║██╔██╗██║██║░░██╗░██████╔╝███████║
██╔══██║██║░░██║░╚████╔╝░██╔══██║██║░░░██║░░░  ██║░░██║██╔══██║██║██║╚████║██║░░╚██╗██╔══██╗██╔══██║
██║░░██║██████╔╝░░╚██╔╝░░██║░░██║██║░░░██║░░░  ██████╔╝██║░░██║██║██║░╚███║╚██████╔╝██║░░██║██║░░██║
╚═╝░░╚═╝╚═════╝░░░░╚═╝░░░╚═╝░░╚═╝╚═╝░░░╚═╝░░░  ╚═════╝░╚═╝░░╚═╝╚═╝╚═╝░░╚══╝░╚═════╝░╚═╝░░╚═╝╚═╝░░╚═╝"

ln -s ~/.dotfiles/.npm ~/.npm
ln -s ~/.dotfiles/.vscode ~/.vscode
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig

echo "Installing Brew..."
sudo apt-get install build-essential curl file git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing brew cask..."

brew tap homebrew/cask

echo "Installing all of your programs..."

brew bundle --file ~/.dotfiles/Brewfile

echo "Done installing. Enjoy :D"

