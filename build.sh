#!/usr/bin/env bash
# build.sh

# Instala los paquetes
pip install -r requirements.txt

# Recolecta los archivos estáticos (CSS, JS, imágenes)
python manage.py collectstatic --noinput

# Aplica migraciones a la base de datos
python manage.py migrate
