#!/bin/sh


# initialiser la base si elle n’existe pas
if [ ! -f /instance/flaskr.sqlite ]; then
# créer le dossier /instance s’il n’existe pas
mkdir -p instance
  flask --app flaskr init-db
fi

# lancer gunicorn
exec gunicorn -b 0.0.0.0:7000 app:app