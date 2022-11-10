#/bin/bash -x

apt-get install aptitude -y
apt-get install build-essential libtool autotools-dev automake pkg-config bsdmainutils python3 -y
apt-get install libevent-dev libboost-system-dev libboost-filesystem-dev libboost-test-dev libboost-thread-dev libfmt-dev -y
apt install libsqlite3-dev -y
apt-get install libminiupnpc-dev -y
apt-get install libzmq3-dev -y
apt-get install libqt5gui5 libqt5core5a libqt5dbus5 qttools5-dev qttools5-dev-tools -y
apt-get install libqrencode-dev -y


apt-get install -y autoconf g++ make openssl libssl-dev libcurl4-openssl-dev
apt-get install -y libcurl4-openssl-dev pkg-config
apt-get install -y libsasl2-dev


git remote add upstream https://github.com/litecoin-project/litecoin.git
git fetch upstream
git merge upstream/master
git push

