
#!/bin/bash

# Arrêter le script si une commande échoue.
set -e

# Vérifier que le dossier du site existe.
if [ ! -d "$HOME/serveur/site-equipe" ]; then
    # Afficher un message si le dossier est absent.
    echo "Erreur : le dossier site-equipe n'existe pas."
    # Arrêter le script avec un code d'erreur.
    exit 1
# Terminer la vérification.
fi

# Aller dans le dossier du site de l'équipe.
cd "$HOME/serveur/site-equipe"

# Récupérer les dernières modifications sur GitHub.
git pull

# Copier les fichiers du site vers le serveur web.
sudo cp index.html style.css /var/www/html/

# Afficher un message une fois le déploiement terminé.
echo "Déploiement terminé avec succès !"
