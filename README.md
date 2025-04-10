# HiveAgileCTL Binarios

Este repositorio contiene los binarios precompilados de HiveAgileCTL para diferentes arquitecturas.

## Arquitecturas disponibles

- `hiveagilectl_amd64` - Para sistemas x86_64/amd64
- `hiveagilectl_arm` - Para sistemas ARM (32-bit)
- `hiveagilectl_arm64` - Para sistemas ARM64 (64-bit)

## Instalación

1. Descarga el binario correspondiente a tu arquitectura desde la sección de [Releases](https://github.com/aitorroma/hiveagilectl-bin/releases)

2. Dale permisos de ejecución:
```bash
chmod +x hiveagilectl_*
```

3. Mueve el binario a un directorio en tu PATH (como root):
```bash
sudo mv hiveagilectl_* /usr/local/bin/hiveagilectl
```

4. Ejecuta el programa:
```bash
sudo hiveagilectl
```

## Notas
- El programa debe ejecutarse como root
- Se requiere una suscripción válida para usar todas las funcionalidades