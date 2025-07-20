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

-> Code source : GitHub - Conchero/CImple

---

## Lancer en local avec Docker

### Prérequis
- Docker installé sur votre machine ([Docker Desktop](https://www.docker.com/products/docker-desktop))

### Étapes

### Cloner le dépôt
git clone https://github.com/Conchero/CImple.git
cd CImple

### Construire l’image Docker
docker build -t cimple-docker .

### Lancer le conteneur
docker run -d -p 5000:5000 cimple-docker
