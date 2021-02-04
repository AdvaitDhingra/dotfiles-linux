echo "Installing Brew..."
sudo apt-get install build-essential curl file git

/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Installing brew cask..."

brew tap caskroom/cask

# Tools:

brew install git
brew cask install firefox

echo "Done installing. Enjoy :D"

