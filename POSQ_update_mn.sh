#/bin/bash
clear
cd ~

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd ~

COIN_TGZ='https://github.com/nashsclay/POSQ/releases/download/v2.1.4/posq_mn.zip'
unzip $COIN_ZIP >/dev/null 2>&1
sudo mv -f poseidon-cli /usr/local/bin
sudo mv -f poseidond /usr/local/bin
sudo mv -f poseidon-tx /usr/local/bin
sudo rm posq_mn.zip
echo "! Restarting POSQ Masternode !"
cd ~/.poseidon
sudo rm db.log debug.log poseidond.pid
sudo rm -R backups/
sudo rm -R blocks/
sudo rm -R chainstate/
sudo rm -R database/
sudo rm -R sporks/
sudo rm -R zerocoin/
sudo poseidon-cli stop
echo "Masternode restarted"
