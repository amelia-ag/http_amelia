#!/bin/bash

# Pedir al usuario que elija la aplicaci  n
read -p "Escribe el nombre de la aplicaci  n: " app_name

# Directorio donde se encuentra la aplicaci  n
app_directory="/var/www/$app_name"

# Ruta al archivo de configuraci  n de Apache
apache_config="/etc/apache2/sites-available/$app_name.conf"

# Carpeta donde se guardar  n las copias de seguridad
backup_folder="/copia"

# Nombre del archivo de copia de seguridad
backup_name="backup_$app_name.tar.gz"

# Verificar si la carpeta de copias de seguridad existe o crearla si no
mkdir -p "$backup_folder"

# Copiar el archivo de configuraci  n de Apache y comprimir el directorio de la aplicaci  n
tar -czf "$backup_folder/$backup_name" -C "$app_directory" "$apache_config"

echo "Copia de seguridad completada en: $backup_folder/$backup_name"
