#!/bin/bash
echo "Initialisation de la BDD SQLite"
mkdir -p instance
flask --app flaskr init-db