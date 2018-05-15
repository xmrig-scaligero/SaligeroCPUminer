sudo apt-get -y update
sudo apt-get -y install git build-essential cmake libuv1-dev libmicrohttpd-dev
sudo apt-get -y install git libcurl4-openssl-dev build-essential libjansson-dev autotools-dev automake
sudo apt-get -y install pkg-config libc6-dev m4 g++-multilib autoconf libtool ncurses-dev unzip git python python-zmq zlib1g-dev wget curl bsdmainutils automake
cd /home
sudo git clone https://github.com/xmrig/xmrig.git
cd xmrig
sudo mkdir build
cd build
sudo cmake ..
sudo make
cd ..
sudo cp -R build/ /xmrig-scaligero
cd /xmrig-scaligero
sudo wget https://raw.githubusercontent.com/chicoalff/SaligeroCPUminer/master/xmr.json

sudo ./xmrig --config=xmr.json

