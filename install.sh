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

sudo apt-get install build-essential curl file git python python3

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

git clone https://github.com/root-project/root.git
mkdir rootbuild rootinstall
cd rootbuild
sudo apt-get install dpkg-dev cmake g++ gcc binutils libx11-dev libxpm-dev libxft-dev libxext-dev python libssl-dev
cmake -DCMAKE_INSTALL_PREFIX=../rootinstall ../root
cmake --build . -- -j4
cd bin
bash thisroot.sh

echo "ROOT has been installed"


echo "Done installing. Enjoy :D"

