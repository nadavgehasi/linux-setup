sudo apt install -y vim tmux htop

# Setup git
sudo apt install -y git

# Configure User Details
git config --global user.email "nadavgehasi@gmail.com"
git config --global user.name "Nadav Gihasi"

# Configure Aliases
git config --global alias.br branch
git config --global alias.co checkout
git config --global alias.st status

# Setup docker
sudo apt install -y docker.io
sudo groupadd docker
sudo usermod -aG docker $USER
newgrp docker
sudo systemctl start docker

# ssh-keygen
sudo mkdir /data
sudo chown $USER:$USER /data






cat ~/.ssh/id_rsa.pub
