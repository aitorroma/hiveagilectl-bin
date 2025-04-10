#!/bin/bash

# Colores
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m'

# Verificar si se está ejecutando como root
if [ "$EUID" -ne 0 ]; then
    echo -e "${RED}Este script debe ejecutarse como root${NC}"
    echo -e "Por favor, ejecuta: ${YELLOW}sudo $0${NC}"
    exit 1
fi

# Detectar la arquitectura del sistema
ARCH=$(uname -m)
case "$ARCH" in
    "x86_64")
        BINARY="hiveagilectl_amd64"
        ;;
    "aarch64"|"arm64")
        BINARY="hiveagilectl_arm64"
        ;;
    "armv7l"|"armv6l")
        BINARY="hiveagilectl_arm"
        ;;
    *)
        echo -e "${RED}Arquitectura no soportada: $ARCH${NC}"
        exit 1
        ;;
esac

# Configuración
GITHUB_USER="aitorroma"
GITHUB_REPO="hiveagilectl-bin"
INSTALL_DIR="/usr/local/bin"
BINARY_NAME="hiveagilectl"

echo -e "${GREEN}🔍 Detectando última versión...${NC}"

# Obtener la última release
LATEST_RELEASE=$(curl -s "https://api.github.com/repos/$GITHUB_USER/$GITHUB_REPO/releases/latest" | grep '"tag_name":' | cut -d'"' -f4)

if [ -z "$LATEST_RELEASE" ]; then
    echo -e "${RED}❌ Error: No se pudo obtener la última versión${NC}"
    exit 1
fi

echo -e "${GREEN}📥 Descargando HiveAgileCTL $LATEST_RELEASE para $ARCH...${NC}"

# Descargar el binario
DOWNLOAD_URL="https://github.com/$GITHUB_USER/$GITHUB_REPO/releases/download/$LATEST_RELEASE/$BINARY"
if ! curl -L -o "$INSTALL_DIR/$BINARY_NAME" "$DOWNLOAD_URL"; then
    echo -e "${RED}❌ Error al descargar HiveAgileCTL${NC}"
    exit 1
fi

# Hacer el archivo ejecutable
chmod +x "$INSTALL_DIR/$BINARY_NAME"

# Limpiar la pantalla
clear

# Mensaje de instalación exitosa
echo -e "${GREEN}******************************************************${NC}"
echo -e "${GREEN}*                                                    *${NC}"
echo -e "${GREEN}*  ¡HiveAgileCTL se ha instalado correctamente! 🎉   *${NC}"
echo -e "${GREEN}*                                                    *${NC}"
echo -e "${GREEN}******************************************************${NC}"

# Instrucciones de uso
echo
echo "Para utilizar HiveAgileCTL, ejecuta el comando:"
echo
echo -e "${GREEN}hiveagilectl${NC}"
echo
echo "Te pedirá el correo que utilizas para iniciar sesión en HiveAgile"
echo -e "y el ${YELLOW}código de integración${NC} que está disponible ${YELLOW}en tu dashboard${NC}."
echo
echo -e "${GREEN}Versión instalada: $LATEST_RELEASE${NC}"
echo