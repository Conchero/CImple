#!/bin/bash

# créer le dossier /data s’il n’existe pas
mkdir -p instance

# initialiser la base si elle n’existe pas
if [ ! -f /instance/flaskr.sqlite ]; then
  flask --app flaskr init-db
fi

# lancer gunicorn
exec gunicorn app:app
