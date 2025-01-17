apt update
apt install -y unzip zip less htop poppler-utils jq git

git config --global user.email "zilinec.m@gmail.com"
git config --global user.name "Matus Zilinec"

# Setup nvim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz
echo '' >> ~/.profile
echo 'export PATH="$PATH:/opt/nvim-linux64/bin"' >> ~/.profile
