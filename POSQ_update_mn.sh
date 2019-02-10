#/bin/bash
systemctl stop posq.service
clear
cd ~

echo "This script was forked from CryptoNeverSleeps"
echo "Ubuntu 16.04 is the recommended opearting system for this install."
echo

cd /usr/local/bin/
echo "Script may appear frozen for a few seconds. This is normal."
wget https://github.com/nashsclay/POSQ/releases/download/v2.1.4/posq_mn.zip
sudo rm posqd posq-cli posq-tx
unzip posq_mn.zip >/dev/null 2>&1
sudo rm posq_mn.zip
echo "! Restarting POSQ Masternode !"
cd ~/.posq
sudo rm ~/.posq/db.log ~/.posq/debug.log ~/.posq/posqd.pid
sudo rm -R ~/.posq/backups/
sudo rm -R ~/.posq/blocks/
sudo rm -R ~/.posq/chainstate/
sudo rm -R ~/.posq/database/
sudo rm -R ~/.posq/sporks/
sudo rm -R ~/.posq/zerocoin/
sudo rm ~/.posq/budget.dat ~/.posq/db.log ~/.posq/debug.log ~/.posq/fee_estimates.dat ~/.posq/mncache.dat ~/.posq/mnpayments.dat ~/.posq/peers.dat
systemctl start posq.service
echo "Masternode restarted. Any errors about files not existing is ok."
