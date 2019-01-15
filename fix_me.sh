#/bin/bash
clear
cd ~

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd ~

wget https://github.com/nashsclay/POSQ/raw/master/posq-bootstrap.zip
sudo unzip posq-bootstrap.zip
echo "! Restarting POSQ Masternode !"
cd ~/.posq
sudo rm db.log debug.log posq.pid
sudo rm -R backups/
sudo rm -R blocks/
sudo rm -R chainstate/
sudo rm -R database/
sudo rm -R sporks/
sudo rm -R zerocoin/
mv ..peers.dat .
mv ..blocks/ .
sudo posq-cli stop
echo "Masternode restarted"
