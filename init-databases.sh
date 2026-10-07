#!/bin/bash
echo "⏳ Cargando bases de datos MariaDB..."
if [ -f /workspaces/Base-de-datos/backup_bases.sql ]; then
    sudo mariadb -u root < /workspaces/Base-de-datos/backup_bases.sql
    echo "✅ Bases de datos cargadas exitosamente"
else
    echo "⚠️ No hay backup disponible en backup_bases.sql"
fi
