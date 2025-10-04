# Aliases para la terminal
# ~/.zshrc.d/aliases.zsh

# =============================================
# 1.          COMANDOS DEL SISTEMA
# =============================================
# Actualización del sistema y utilidades básicas
# alias update='sudo apt update && sudo apt upgrade -y && flatpak update' # <-- Actualizar todo el sistema (APT) incluyendo Flatpaks
# alias update='sudo dnf update -y && flatpak update' # <-- Actualizar todo el sistema (DNF) incluyendo Flatpaks
# alias update='paru -Syu && flatpak update' # <-- Actualizar todo el sistema incluyendo AUR y Flatpak
alias fsh='fastfetch' # <-- Menos letras = Más velocidad
alias salir='exit' # <-- Españolización
alias cls='clear' # <-- Menos letras = Más velocidad

# =============================================
# 2.        NAVEGACIÓN DE DIRECTORIOS
# =============================================
# Comandos para moverse entre directorios
alias ir='cd' # <-- Españolización
alias cds='yazi' # <-- Mayor coherencia sobre la función de yazi, se prioriza velocidad de tecleo
alias ..='cd ..' # <-- Subir un nivel de directorio
alias ...='cd ../..' # <-- Subir dos niveles de directorio
alias ....='cd ../../..' # <-- Subir tres niveles de directorio
alias .....='cd ../../../..' # <-- Subir cuatro niveles de directorio
alias ......='cd ../../../../..' # <-- Subir cinco niveles de directorio

# =============================================
# 3.           COMANDOS LS
# =============================================
# Se prioriza dar una experiencia out-of-the-box con una buena gama de comandos para 'ls', personaliza a tu gusto personal
alias ll='ls -lh --color' # <-- Listado detallado con tamaño legible
alias l='ls -CFA --color' # <-- Listado en columnas con indicadores de tipo
# ¿Quieres una mejor esperiencia cambiando de directorios? ¡Prueba 'eza!'
# Visita https://github.com/eza-community/eza/blob/main/INSTALL.md para ver las instrucciones de instalación para tu distribución de Linux.
# alias l='eza --classify=auto --color=always --group-directories-first --sort=extension -A --icons' # <-- Listar archivos con eza (formato básico)
# alias la='eza -a --color=always --group-directories-first --icons' # <-- Listar archivos incluyendo ocultos con eza
# alias ll='eza -l --color=always --group-directories-first --icons' # <-- Listado detallado con eza
# alias l.="eza -a | grep -e '^\.'" # <-- Mostrar solo archivos ocultos con eza

# =============================================
# 4.     HERRAMIENTAS Y ACCESOS DIRECTOS
# =============================================
# Accesos rápidos a herramientas externas
# alias icat='kitten icat' # <-- Visor rápida y nativo de imágenes usando la terminal de Kitty
# alias bloquear='i3lock-fancy -g -p' # <-- Bloquear la pantalla de manera estética y bonita, solo funciona con i3lock instalado

# =============================================
# 5.          MANEJO DE ARCHIVOS
# =============================================
# Comandos para manipulación de archivos
alias untar='tar -xf' # <-- Shortcut para el comando tar, siguiendo como ejemplo 'unzip' para archivos '.zip'
alias tarnow='tar -acf ' # <-- Crear archivo tar comprimido (ejemplo: tarnow archivo.tar.gz directorio/)
alias ungz="gunzip -k" # <-- Descomprimir archivos .gz manteniendo el original
alias wget='wget -c ' # <-- Continuar descargas interrumpidas automáticamente
