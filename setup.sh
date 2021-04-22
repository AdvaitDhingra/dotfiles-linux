ln -s ~/.dotfiles/config-files/.gitconfig ~/.gitconfig

echo "Done linking"

echo "Installing ROOT"

sudo apt install git cmake

cd ..

git clone https://github.com/root-project/root

mkdir rootbuild rootinstall

cd rootbuild

cmake -DCMAKE_INSTALL_PREFIX=../rootinstall ../root
cmake --build . -- -j4
cd bin
source thisroot.sh

echo "Done installing root"
