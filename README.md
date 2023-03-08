# Pack de scripts pour Unix

## Pour Ubuntu 22.04

Le script principal a pour but d'installer tous les outils nécessaires au développement sur Ubuntu 22.04 selon les besoins de l'utilisateur.
<br/>Il installe les paquets et kits de développement suivants :
- les outils de ligne de commandes
  - de curl & wget (permet de gérer les téléchargements)
  - de nano (permet de gérer les fichiers)
  - de zip & unzip (permet de gérer les archives)
  - de git (permet de gérer les dépôts git)
  - de tree (permet de visualiser les dossiers sous forme d'arbre)
  - de libpcre3 (permet de gérer les expressions régulières)
- les kits de développement
  - de Python
  - de C / C++
  - de C#
  - de Java
  - de NodeJS & NPM
  - de PHP
  - de Ruby

### Installation

Voici le script à lancer :

```
sudo sh ubuntu_install_full.sh                  
```

### Vérification des installations

Le script ci-dessous désinstallera tous les outils installés dans la liste décrite en haut de la description.

```
sudo sh ubuntu_check_version.sh
```

### Désinstallation des installations

Le script ci-dessous désinstallera tous les outils installés dans la liste décrite en haut de la description.

```
sudo sh ubuntu_uninstall_full.sh
```