#! /bin/bash

echo "Bienvenu $USERNAME, nous sommes le $(date +%m) $(date +%B) $(date +%Y)"
read -p "Quel répertoire (chemin absolu) vous intéresse aujourd'hui ?
" chemin
echo "Vous avez entré :
$chemin"
echo "La liste des fichiers avec le pattern $1 dans votre chemin contenant $2 est :"
find ${chemin} -name $1 -exec grep -il $2 {} \;