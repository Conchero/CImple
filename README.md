# CImple – Blog Flask CI/CD (Projet DevOps)

**CImple** est une application web développée avec Flask dans le but de mettre en pratique mes compétences en **DevOps**, dans le cadre de ma reconversion vers ce domaine.

Le projet vise à démontrer ma capacité à :

- Concevoir une architecture modulaire Python
- Mettre en place une intégration continue (CI) via **GitHub Actions**
- Déployer automatiquement l’application sur **Render** (CD)
- Structurer le projet avec **tests unitaires** et configuration dynamique
- Conteneuriser l’application (version Docker disponible)

Le code est accessible, maintenable et documenté. Recruteurs, formateurs ou curieux, n’hésitez pas à l’explorer, à tester l’application ou à cloner le dépôt.

-> Lien de l’app en ligne : https://cimple.onrender.com

##### ⚠️ **La base de donnée n'est pas persistante en version déployé, cela est dû à la version gratuite de l'hébergeur, une solution serait d'implémenter le fichier sql dans le build mais n'étant pas une pratique courante en production professionnelle j'ai préféré me concentrer sur d'autre projets où je vais utiliser Docker Volumes afin de régler ce hic**
---

## Lancer en local avec Docker

### Prérequis
- Docker installé sur votre machine ([Docker Desktop](https://www.docker.com/products/docker-desktop))

### Étapes

### Cloner le dépôt
git clone https://github.com/Conchero/CImple.git
cd CImple

### Construire l’image Docker
docker build -t cimple:latest .

### Construire le volume Docker pour la persistance de la data
docker volume create cimple-volume

### Lancer le conteneur
docker run --name cimple -dp 7000:7000 --mount type=volume,src=cimple-volume,target=/app/instance cimple:latest

Vous pouvez maintenant accéder à l’application à l’adresse suivante :
http://localhost:7000
