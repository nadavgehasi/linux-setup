# Setup RSA Key for git
ssh-keygen
echo -e "\n\n"
cat ~/.ssh/id_rsa.pub
echo -e "\n\n"
read  -n 1 -p "Insert the rsa public key inside github and press Enter to continue" mainmenuinput

# Install programs
xargs sudo apt install -y <apt-packages.txt

# Setup git
sudo apt install -y git

# Configure User Details
echo "Configuring git"
git config --global user.email "nadavgehasi@gmail.com"
git config --global user.name "Nadav Gihasi"

# Configure Aliases
git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.st status

# Setup Dotfiles
echo "Cloning Dotfiles"
git clone --recurse-submodule git@github.com:nadavgehasi/.bash.git ~/.bash
echo "~/.bash/.bashrc" >>  ~/.bashrc
git clone --recurse-submodule git@github.com:nadavgehasi/.vim.git ~/.vim
ln -s ~/.vim/.vimrc ~/.vimrc
git clone --recurse-submodule git@github.com:nadavgehasi/.tmux.git ~/.tmux
ln -s ~/.tmux/.tmux.conf ~/.tmux.conf

# Setup docker
echo "Configuring Docker"
sudo apt install -y docker.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker

# Create Working dir
sudo mkdir /data
sudo chown $USER:$USER /data
mkdir -p /data/workspace/python-workspace
mkdir -p /data/workspace/devops

# Clone developed repos
git clone git@github.com:nadavgehasi/linux-setup.git /data/workspace/linux-setup
git clone git@github.com:nadavgehasi/devops.git /data/workspace/devops

# Setup docker 
echo "Configuring Docker"
sudo apt install -y docker.io
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker


sudo reboot
