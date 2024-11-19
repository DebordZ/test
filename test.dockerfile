# Utiliser l'image de base Ubuntu
FROM ubuntu:latest

# Mainteneur (optionnel)
LABEL maintainer="votre.email@exemple.com"

# Mettre à jour les paquets et installer GCC
RUN apt-get update && apt-get install -y gcc && apt-get clean

# Créer le répertoire /home/script
RUN mkdir -p /home/script

# Copier le fichier script.sh dans le conteneur
# Supposons que script.sh se trouve dans le même répertoire que le Dockerfile
COPY script.sh /home/script/

# Donner les permissions d'exécution au script
RUN chmod +x /home/script/script.sh

# Définir le point d'entrée pour exécuter le script
ENTRYPOINT ["/home/script/script.sh"]