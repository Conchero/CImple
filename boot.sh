#!/bin/bash

# créer le dossier /data s’il n’existe pas
mkdir -p /data

# initialiser la base si elle n’existe pas
if [ ! -f /data/flaskr.sqlite ]; then
  flask --app flaskr init-db
fi

# lancer gunicorn
exec gunicorn app:app
