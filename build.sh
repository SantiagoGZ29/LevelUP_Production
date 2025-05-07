#!/usr/bin/env bash

# Salir si ocurre un error
set -o errexit

# Instala las dependencias
pip install --upgrade pip
pip install -r requirements.txt

# Aplica migraciones (si usas una base de datos)
#python manage.py migrate

# Recolecta archivos estáticos
python manage.py collectstatic --no-input --clear
