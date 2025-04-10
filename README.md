# HiveAgileCTL Binarios

Este repositorio contiene los binarios precompilados de HiveAgileCTL para diferentes arquitecturas.

## 🚀 Instalación Rápida

Para instalar HiveAgileCTL en un solo comando:

```bash
/bin/bash -c "$(curl -fsSL https://hiveagilectl.hiveagile.com/)"
```

## 📦 Instalación Manual

Si prefieres instalar manualmente:

1. Descarga el binario correspondiente a tu arquitectura desde la sección de [Releases](https://github.com/aitorroma/hiveagilectl-bin/releases)

2. Dale permisos de ejecución:
```bash
chmod +x hiveagilectl_*
```

3. Mueve el binario a un directorio en tu PATH (como root):
```bash
sudo mv hiveagilectl_* /usr/local/bin/hiveagilectl
```

## 🔧 Arquitecturas Soportadas

- `hiveagilectl_amd64` - Para sistemas x86_64/amd64
- `hiveagilectl_arm` - Para sistemas ARM (32-bit)
- `hiveagilectl_arm64` - Para sistemas ARM64 (64-bit)

## 📝 Notas
- El programa debe ejecutarse como root
- Se requiere una suscripción válida para usar todas las funcionalidades
- Los cambios y nuevas características se documentan en [CHANGELOG.md](CHANGELOG.md)
