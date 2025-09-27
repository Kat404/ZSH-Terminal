# Aliases para la terminal
# ~/.zshrc.d/aliases.zsh

# =============================================
# 1. COMANDOS DEL SISTEMA
# =============================================
# Actualización del sistema y utilidades básicas
alias update='sudo apt update && sudo apt upgrade -y && flatpak update' # <-- Cambia este comando según la distribución de Linux que utilices
alias fsh='fastfetch' # <-- Menos letras = Más velocidad
alias salir='exit' # <-- Españolización
alias cls='clear' # <-- Menos letras = Más velocidad

# =============================================
# 2. NAVEGACIÓN DE DIRECTORIOS
# =============================================
# Comandos para moverse entre directorios
alias ir='cd' # <-- Españolización
alias irq='cd ..' # <-- Subconjunto del comando anterior, se prioriza velocidad de tecleo
alias cds='yazi' # <-- Mayor coherencia sobre la función de yazi, se prioriza velocidad de tecleo

# =============================================
# 3. COMANDOS LS
# =============================================
# Se prioriza dar una experiencia out-of-the-box con una buena gama de comandos para 'ls', personaliza a tu gusto personal
alias ll='ls -lh --color'
alias l='ls -CFA --color'

# =============================================
# 4. HERRAMIENTAS Y ACCESOS DIRECTOS
# =============================================
# Accesos rápidos a herramientas externas
# 'icat' solo funciona en la terminal Kitty, si usas otra terminal, descomenta la siguiente línea
# alias icat='kitten icat' # <-- Shortcut para el kitten de icat el cual permite visualizar imágenes en la terminal
# alias bloquear='i3lock-fancy -g -p' # <-- Descomenta si usas Desktop Locker, bloqueo de pantalla visualmente bonito

# =============================================
# 5. MANEJO DE ARCHIVOS
# =============================================
# Comandos para manipulación de archivos
alias untar='tar -xf' # <-- Shortcut para el comando tar, siguiendo como ejemplo 'unzip' para archivos '.zip'