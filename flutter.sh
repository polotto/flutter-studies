
echo "--------------------------------------"
echo "installing iOS toolchain"
echo "--------------------------------------"

echo "-> installing xcode command line tools"
xcode-select --install

echo "-> enabling XCode command line tools"
sudo xcode-select --switch /Applications/Xcode.app/Contents/Developer

echo "-> installing flutter usb tools"
brew update
brew install --HEAD usbmuxd
brew link usbmuxd
brew install --HEAD libimobiledevice
brew install ideviceinstaller

echo "-> installing ios deploy"
brew install ios-deploy
