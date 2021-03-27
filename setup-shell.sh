sudo apt install -y git vim tmux htop


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
