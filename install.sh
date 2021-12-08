sudo apt-get update
sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
    
   
# Add Docker’s official GPG key 
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg



# to set up the stable repository

echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/docker-archive-keyring.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  
  
# installing docker engine 
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io


# verification of installation

sudo docker run hello-world



# run docker as rootless

#sudo groupadd docker
#sudo usermod -aG docker $USER

#newgrp docker

#docker run hello-world
