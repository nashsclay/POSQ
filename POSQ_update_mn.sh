#/bin/bash
clear
cd ~

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd ~

wget https://github.com/nashsclay/POSQ/releases/download/v2.0/posq_mn_files.tar.gz
sudo tar -xvf posq_mn_files.tar.gz
sudo mv -f poseidon-cli /usr/local/bin
sudo mv -f poseidond /usr/local/bin
sudo mv -f poseidon-tx /usr/local/bin
sudo rm posq_mn_files.tar.gz
echo "! Restarting POSQ Masternode !"
cd ~/.poseidon
sudo rm budget.dat db.log debug.log fee_estimates.dat flexinodesd.pid mnpayments.dat mncache.dat
sudo rm -R backups/
sudo rm -R blocks/
sudo rm -R chainstate/
sudo rm -R database/
sudo poseidon-cli stop
echo "Masternode restarted"
