#!/usr/bin/env bash
# build.sh

# Crea un entorno virtual y activa
python -m venv venv
source venv/bin/activate  # En Windows sería venv\Scripts\activate

# Instala los paquetes necesarios
pip install -r requirements.txt

# Recolecta los archivos estáticos (CSS, JS, imágenes)
python manage.py collectstatic --noinput

# Aplica migraciones a la base de datos
python manage.py migrate
