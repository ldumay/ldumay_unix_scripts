# Description : 
# Ce script a pour but d'installer tous les outils
# nécessaires au développement sur Ubuntu 22.04
# selon les besoins de l'utilisateur.
# Il installe les paquets et kits de développement suivants :
# - les outils de ligne de commandes
#   - de curl & wget (permet de gérer les téléchargements)
#   - de nano (permet de gérer les fichiers)
#   - de zip & unzip (permet de gérer les archives)
#   - de git (permet de gérer les dépôts git)
#   - de tree (permet de visualiser les dossiers sous forme d'arbre)
#   - de libpcre3 (permet de gérer les expressions régulières)
# - les kits de développement
#   - de Python
#   - de C / C++
#   - de C#
#   - de Java
#   - de NodeJS
#   - de PHP
#   - de Ruby

# Ajout des variables nécessaires au script au terminal
# pour pouvoir les utiliser dans les commandes
export separateLine="- - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -"

# Lancement du script
echo "[Script - Ubuntu 22.04] Installation de tous les outils nécessaires au développement"
echo $separateLine
echo "====> Les outils installable via ce script sont les suivants :"
echo "--> Les outils de ligne de commandes : curl / wget / nano /zip / unzip / git / tree / libpcre3"
echo "--> Les kits de dév. : Python 3 / C / C++ / C# & .Net / Java / NodeJS / PHP (latest-8 ou 7.4) / Ruby"
echo $separateLine
echo ""
echo "- Installer tous les outils ? (y/n)"
read choice
if [ $choice = "y" ]
then
    export all=true
    # Vérification des choix de l'utilisateur
    /bin/bash ./ubuntu_install_packages.sh
    /bin/bash ./ubuntu_install_dev_kits.sh
else
    echo "- Installer curl & wget ? (y/n)"
    read choice
    if [ $choice = "y" ] then export curl_wget=true
    
    echo "- Installer nano ? (y/n)"
    read choice
    if [ $choice = "y" ] then export nano=true

    echo "- Installer zip & unzip ? (y/n)"
    read choice
    if [ $choice = "y" ] then export zip_unzip=true

    echo "- Installer git ? (y/n)"
    read choice
    if [ $choice = "y" ] then export git=true

    echo "- Installer tree ? (y/n)"
    read choice
    if [ $choice = "y" ] then export tree=true
    
    echo "- Installer libpcre3 ? (y/n)"
    read choice
    if [ $choice = "y" ] then export libpcre3=true

    echo "- Installer Python 3 ? (y/n)"
    read choice
    if [ $choice = "y" ] then export python=true
    
    echo "- Installer C / C++ ? (y/n)"
    read choice
    if [ $choice = "y" ] then export c_cpp=true
    
    echo "- Installer C# & .Net ? (y/n)"
    read choice
    if [ $choice = "y" ] then export csharp=true

    echo "- Installer Java ? (y/n)"
    read choice
    if [ $choice = "y" ] then export java=true

    echo "- Installer NodeJS ? (y/n)"
    read choice
    if [ $choice = "y" ] then export nodejs=true

    echo "- Installer PHP (latest) ou PHP 7.4 ou aucun ? (1/2/3)"
    read choice
    if [ $choice = "1" ] then export php_latest=true
    if [ $choice = "2" ] then export php_7_4=true

    echo "- Installer Ruby ? (y/n)"
    read choice
    if [ $choice = "y" ] then export ruby=true

    echo $separateLine
    # Vérification des choix de l'utilisateur
    /bin/bash ./ubuntu_install_packages.sh
    /bin/bash ./ubuntu_install_dev_kits.sh