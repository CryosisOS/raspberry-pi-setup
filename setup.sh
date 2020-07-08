# Set directory
cd ~
# package stuff
sudo apt-get update
sudo apt-get install vim # ViM because it's the best
sudo apt-get install git # Version Control
sudo apt-get install build-essentials # Just in case it's not already on the OS
sudo apt-get upgrade 
sudo apt-get clean # Clean dead packages
git clone https://github.com/PotatoMaster101/vimconf # Setup ViM to how I like it
cd vimconf && chmod 755 ./init.sh; ./init.sh
cd ..; rm -rf ./vimconf
git clone https://github.com/PotatoMaster101/dotfiles # Setup dot files to how I like it
cd dotfiles && chmod 755 ./init.sh; ./init.sh
cd ..; rm -rf ./dotfiles
source .bashrc # Source the dotfile
echo $1 > /etc/hostname # Set the Hostname to the command line argument that is passed to the script
shutdown -r now # Reboot
