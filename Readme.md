# MOSEF Projet Linux 2019
## Réalisé par Alexia ZOUNIAS-SIRABELLA

Ce dépot Git répond aux consignes données dans le cadre du **projet Linux de la formation MOSEF**.

Ce dépot est composé des éléments suivants :

	- Un dossier *Test* mettant à votre disposition un jeu de fichiers vous permettant de jouer le script.
	- Un dossier *Images* avec un exemple concret utilisant les fichiers évoqués ci-dessus.
	- Un script *search_fichiers* dont le fonctionnement sera détaillé ci-après.
	- Ce fichier *Readme* résumant les différents éléments.

Ainsi, le script *search_fichiers* s'exécute avec deux arguments où le premier argument est le pattern suivi par le nom des fichiers et le deuxième est le pattern de la chaîne de caractères à trouver à l'intérieur des fichiers. Il suit les étapes suivantes:

	1. Souhaite la bienvenue à l'utilisateur : ``` echo "Bienvenu $USERNAME, nous sommes le $(date +%m) $(date +%B) $(date +%Y)" ```
	2. Demande le chemin des fichiers : ``` read -p "Quel répertoire (chemin absolu) vous intéresse aujourd'hui ?" chemin ```
	3. Renvoie le résultat souhaité : ``` find ${chemin} -name $1 -exec grep -il $2 {} \; ```

Vous pouvez tester le script, par exemple, en exécutant les commandes suivantes :

![Images](Exemple.png)