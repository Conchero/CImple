## Bienvenue sur mon projet de blog personnel !

Ce projet a été conçu dans le cadre de ma montée en compétences en DevOps, et a pour objectif de démontrer ma capacité à :

* Développer une application web en Python (Flask)

* Mettre en place une intégration continue (CI) avec GitHub Actions

* Gérer une chaîne de déploiement automatisé (CD) vers Render

* Structurer le code selon les bonnes pratiques (modularité, tests unitaires, configuration dynamique)

Le tout est conteneurisé avec Docker (version précédente), et la version actuelle est déployée automatiquement à chaque push sur main.

Recruteurs, développeurs ou curieux, n’hésitez pas à explorer le code, tester l’application, ou cloner le dépôt pour la faire tourner localement.

-> Lien de l’app en ligne : https://cimple.onrender.com

-> Code source : GitHub - Conchero/CImple


## Installation Locale

Assurez vous d'avoir Docker Desktop sur votre machine/

Depuis le dossier **Cimple**, entrez dans un terminale la ligne de commande:
- <docker build --tag cimple-docker .>

Une fois l'image créer, entrez: 
- <docker run -d -p 5000:5000 cimple-docker>

Depuis Docker Desktop vous trouverez dans l'onglet **Container** l'application ou alors rendez vous sur cette adresse:
http://localhost:5000
