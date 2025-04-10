# Changelog

Todos los cambios notables en HiveAgileCTL se documentarán en este archivo.

El formato está basado en [Keep a Changelog](https://keepachangelog.com/es-ES/1.0.0/),
y este proyecto sigue [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [2025.04.10]

### Añadido
- Validación de membresía al inicio del programa
- Sistema de autenticación con email y código de integración
- Verificación de ejecución como root
- Soporte para múltiples arquitecturas (amd64, arm, arm64)
- Script de instalación mejorado con detección de arquitectura

### Modificado
- Menú Docker: Mejorada la navegación entre menús
- Actualización de Docker: Corregido el problema de tener que presionar dos veces para volver
- Cambiado "Salir" por "Volver al menú anterior" en varios menús

### Seguridad
- Los binarios ahora requieren ejecución como root
- Credenciales almacenadas en `~/.hiveagile/credentials` con permisos restrictivos
- Validación de membresía antes de mostrar el menú principal

### Técnico
- Implementado sistema de compilación automática
- Soporte para releases automáticas en GitHub
- Mejorada la estructura del código y manejo de errores

## [Anterior]

### Características base
- Menú de HestiaCP
- Menú de Docker
- Instalación de contenedores
- Sistema de backups
- Gestión de logs
- Instalación de Traefik