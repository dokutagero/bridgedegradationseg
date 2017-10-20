# Bridge Degradation Segmentation

## Installation

Assuming the NVIDIA drivers are properly installed (see [installation](https://github.com/NVIDIA/nvidia-docker/wiki/Installation))

```sh
# Install Docker CE
sudo apt-get update
sudo apt-get install \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"
sudo apt-key fingerprint 0EBFCD88
sudo apt-get update
sudo apt-get install docker-ce

# Add your user into docker group, need to reload shell to effect
sudo usermod -aG docker <username>

# Check if Docker is working fine
docker run hello-world

# Install nvidia-docker and nvidia-docker-plugin
wget -P /tmp https://github.com/NVIDIA/nvidia-docker/releases/download/v1.0.1/nvidia-docker_1.0.1-1_amd64.deb
sudo dpkg -i /tmp/nvidia-docker*.deb && rm /tmp/nvidia-docker*.deb

# Test nvidia-smi
nvidia-docker run --rm nvidia/cuda nvidia-smi

# Keras installation
git clone https://github.com/fchollet/keras.git
cd keras/docker/

# Run Keras docker with bash
make bash GPU=0 BACKEND=tensorflow DATA=/home/<data> SRC=/home/<src>

# Test if Keras is successfully installed
cd examples/
python mnist_cnn.py
```
