#/bin/bash

echo "We will update your Cryptoverification Masternode right now" 
sudo apt-get -y install unzip
cryptoverification-cli stop
rm -rf /usr/local/bin/cryptoverification*
mkdir CVCCUpdated_1.1.0.0
cd CVCCUpdated_1.1.0.0
wget https://github.com/CVCCVerifyCoin/Cryptoverification/releases/download/v1.1.0.0/Cryptoverification-1.1.0.0-daemon-ubuntu-16.04.tar.gz
tar xzvf Cryptoverification-1.1.0.0-daemon-ubuntu-16.04.tar.gz
mv cryptoverificationd /usr/local/bin/cryptoverificationd
mv cryptoverification-cli /usr/local/bin/cryptoverification-cli
chmod +x /usr/local/bin/cryptoverification*
rm -rf ~/.cryptoverification/blocks
rm -rf ~/.cryptoverification/chainstate
rm -rf ~/.cryptoverification/peers.dat
cd ~/.cryptoverification/
wget https://github.com/CVCCVerifyCoin/Cryptoverification/releases/download/v1.1.0.0/bootstrap.zip
unzip bootstrap.zip
echo "addnode=149.248.62.208 add" >> cryptoverification.conf
echo "addnode=78.141.199.188 add" >> cryptoverification.conf
echo "addnode=78.141.204.73 add" >> cryptoverification.conf
echo "addnode=95.179.195.211 add" >> cryptoverification.conf
echo "addnode=95.179.196.231 add" >> cryptoverification.conf
echo "addnode=217.163.11.82 add" >> cryptoverification.conf
echo "addnode=45.63.97.36 add" >> cryptoverification.conf
echo "addnode=78.141.198.73 add" >> cryptoverification.conf
cd ..
cd CVCCUpdated_1.1.0.0
cryptoverificationd -daemon
sleep 10
cryptoverification-cli addnode 149.248.62.208 onetry
cryptoverification-cli addnode 78.141.199.188 onetry
cryptoverification-cli addnode 78.141.204.73 onetry
cryptoverification-cli addnode 95.179.195.211 onetry
cryptoverification-cli addnode 95.179.196.231 onetry
cryptoverification-cli addnode 217.163.11.82 onetry
cryptoverification-cli addnode 45.63.97.36 onetry
cryptoverification-cli addnode 78.141.198.73 onetry
echo "Masternode Updated!"
echo "Please wait few minutes and start your Masternode again on your Local Wallet"
