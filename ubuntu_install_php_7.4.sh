echo "[Script - PHP - 7.4] Installation de PHP 7.4 sur Ubuntu 22.04"
echo "- - - - - - - - - - - - "
echo "[Script - PHP - 7.4] Mis à jour des dépôts"
sudo apt update && apt upgrade
echo "[Script - PHP - 7.4] Ajout du dépôt de PHP 7.4"
sudo apt -y install software-properties-common
sudo add-apt-repository ppa:ondrej/php
echo "[Script - PHP - 7.4] Mise à jour des dépôts"
sudo apt update && apt upgrade