# 🚀 Tutorial Definitivo de Zsh

[![README in English](https://img.shields.io/badge/README-in%20English-blue.svg)](README.md)

## 📚 Tabla de Contenidos <a id="tabla-de-contenidos"></a>

1. [Instalación de Zsh](#instalacion-de-zsh)
2. [Introducción](#introduccion)
3. [Navegación Básica](#navegacion-basica)
4. [Gestión de Archivos y Directorios](#gestion-de-archivos-y-directorios)
5. [Utilidades del Día a Día](#utilidades-del-dia-a-dia)
6. [Búsquedas](#busquedas)
7. [Tuberías y Redirecciones](#tuberias-y-redirecciones)
8. [Atajos de Teclado Esenciales](#atajos-de-teclado-esenciales)
9. [Editores de Texto](#editores-de-texto)
10. [El Poder de Zsh y Oh My Zsh](#el-poder-de-zsh-y-oh-my-zsh)
11. [Plugins de Oh My Zsh](#plugins-de-oh-my-zsh)
12. [Alias útiles](#alias-utiles)
13. [Yazi - Navegador de Archivos en Terminal](#yazi---navegador-de-archivos-en-terminal)
14. [Antidote - Gestor de Plugins para Zsh](#antidote---gestor-de-plugins-para-zsh)
15. [Personalización de Powerlevel10k](#personalizacion-de-powerlevel10k)

## 📦 Instalación de Zsh <a id="instalacion-de-zsh"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Para iniciar con el contenido de este repositorio, necesitarás instalar `zsh` y aplicarlo como tu shell predeterminado.
Según tu distribución de Linux será el comando que debes ejecutar para instalar `zsh`, este usualmente se puede encontrar de forma nativa en varios administradores de paquetes.

### Debian/Ubuntu

```bash
sudo apt update && sudo apt install zsh
```

### Fedora

```bash
sudo dnf install zsh
```

### Arch Linux

```bash
sudo pacman -S zsh
```

### OpenSUSE

```bash
sudo zypper install zsh
```

### Post-instalación

Después de instalar `zsh`, puedes aplicarlo como tu shell predeterminado ejecutando el siguiente comando:

```bash
chsh -s $(which zsh)
```

Por último, para que `zsh` se aplique correctamente deberás cerrar tu sesión (y volver a entrar) o simplemente reiniciar.

## 🏠 Introducción <a id="introduccion"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Al iniciar nuestra terminal veremos un prompt único:

```text
user_name@pc_name ~
```

- `user_name@pc_name`: Es el usuario@nombre_del_equipo
- `~`: Es el directorio actual. El símbolo `~` (llamado "tilde") es un atajo para tu carpeta personal (`/home/usuario/`).

> **Nota**: Usando Powerlevel10k verás un indicador visual (✓ o ✗) que muestra si el último comando se ejecutó con éxito o falló.

## 📂 Navegación Básica <a id="navegacion-basica"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

### `ls` - Listar archivos y directorios

Lista el contenido del directorio actual.

**Opciones útiles:**

- `ls -l`: Muestra una lista detallada (permisos, propietario, tamaño, fecha).
- `ls -a`: Muestra todos los archivos, incluyendo los ocultos (que empiezan con .).
- `ls -h`: Usado con `-l`, muestra el tamaño en formato humano (KB, MB, GB).
- `ls --color`: Muestra la salida con colores, diferenciando carpetas de archivos.

**Atajos de Oh My Zsh:**

```zsh
alias ll='ls -l'
alias l='ls -CF'
alias la='ls -A'
```

### `cd` - Cambiar de directorio

- `cd Descargas`: Ir a la carpeta de Descargas
- `cd` o `cd ~`: Volver a tu carpeta personal
- `cd -`: Volver al directorio anterior
- `cd ..`: Subir un nivel
- `cd ../..`: Subir dos niveles

> **Consejo**: Escribe `cd De` y presiona `Tab`. Zsh autocompletará a `Descargas/` por ti.

### `pwd` - Mostrar directorio actual

Muestra la ruta completa del directorio actual.

```zsh
pwd
# Salida: /home/usuario
```

## 📁 Gestión de Archivos y Directorios <a id="gestion-de-archivos-y-directorios"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

### `mkdir` - Crear directorios

Crear un directorio simple:

```zsh
mkdir Proyectos
```

Crear directorios anidados:

```zsh
mkdir -p Proyectos/2025/Web
```

### `touch` - Crear archivos vacíos

```zsh
touch nota.txt
touch app.py
```

### `cp` - Copiar archivos y directorios

Copiar un archivo:

```zsh
cp archivo.txt Documentos/
```

Copiar y renombrar:

```zsh
cp archivo.txt copia_archivo.txt
```

Copiar directorios (usar -r para recursivo):

```zsh
cp -r directorio/ copia_directorio/
```

### `mv` - Mover o renombrar

Renombrar archivo:

```zsh
mv viejo.txt nuevo.txt
```

Mover archivo:

```zsh
mv documento.txt Documentos/
```

Mover y renombrar:

```zsh
mv archivo.txt Documentos/nuevo_nombre.txt
```

### `rm` - Eliminar archivos y directorios

> ⚠️ **¡Cuidado!** Los archivos eliminados no van a la papelera.

Eliminar archivo:

```zsh
rm archivo.txt
```

Eliminar directorio vacío:

```zsh
rmdir directorio_vacio/
```

Eliminar directorio con contenido (¡Usar con precaución!):

```zsh
rm -r directorio_con_contenido/
```

## 🛠️ Utilidades del Día a Día <a id="utilidades-del-dia-a-dia"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

### `sudo` - Ejecutar como superusuario

```zsh
sudo comando
```

### Gestión de paquetes (Debian/Ubuntu)

Actualizar lista de paquetes:

```zsh
sudo apt update
```

Actualizar el sistema:

```zsh
sudo apt upgrade
```

Instalar software:

```zsh
sudo apt install nombre_paquete
```

Eliminar software:

```zsh
sudo apt remove nombre_paquete
```

## 🔍 Búsquedas <a id="busquedas"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

### `find` - Buscar archivos

Buscar archivos .conf:

```zsh
find . -name "*.conf"
```

Buscar archivos modificados en los últimos 7 días:

```zsh
find /ruta -mtime -7
```

### `grep` - Buscar en archivos

Buscar "error" en archivos .log:

```zsh
grep "error" *.log
```

Búsqueda recursiva:

```zsh
grep -r "palabra" /directorio/
```

## 🔄 Tuberías y Redirecciones <a id="tuberias-y-redirecciones"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Tubería (|): Conectar comandos

```zsh
ps aux | grep firefox
```

Redirección (>): Guardar salida en archivo

```zsh
ls -l > lista_archivos.txt
```

Añadir al final de archivo (>>)

```zsh
echo "nueva línea" >> archivo.txt
```

## ⌨️ Atajos de Teclado Esenciales <a id="atajos-de-teclado-esenciales"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

- `Ctrl + C`: Cancelar comando actual
- `Ctrl + D`: Cerrar terminal
- `Ctrl + L`: Limpiar pantalla
- `Ctrl + A`: Ir al inicio de la línea
- `Ctrl + E`: Ir al final de la línea
- `Ctrl + U`: Borrar hasta el inicio de la línea
- `Ctrl + K`: Borrar hasta el final de la línea
- `Ctrl + W`: Borrar palabra anterior
- `Ctrl + R`: Buscar en el historial

## 📝 Editores de Texto <a id="editores-de-texto"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

### `nano` - Editor simple

```zsh
nano archivo.txt
```

**Comandos básicos:**

- `Ctrl + O`: Guardar
- `Ctrl + X`: Salir
- `Ctrl + K`: Cortar línea
- `Ctrl + U`: Pegar

### `neovim`/`vim` - Editor avanzado

```zsh
nvim archivo.conf
```

**Modos principales:**

1. **Modo Normal (al abrir)**: Para navegación
   - `h`, `j`, `k`, `l`: Moverse (izquierda, abajo, arriba, derecha)
   - `i`: Entrar al modo Insertar
   - `v`: Modo Visual para seleccionar texto

2. **Modo Insertar (i)**: Para escribir texto
   - `Esc`: Volver al modo Normal

3. **Comandos (desde modo Normal, presiona `:`)**:
   - `:w`: Guardar
   - `:q`: Salir
   - `:wq`: Guardar y salir
   - `:q!`: Forzar salida sin guardar

## ⚡ El Poder de Zsh y Oh My Zsh <a id="el-poder-de-zsh-y-oh-my-zsh"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

### Autocompletado Inteligente (Tab)

- Rutas: `cd /v/l` + `Tab` → `cd /var/log`
- Comandos: `git ch` + `Tab` → Muestra opciones como `checkout`, `cherry-pick`
- Paquetes: `apt install` + `Tab` → Lista de paquetes disponibles

### Búsqueda en el Historial

- `Ctrl + R`: Busca en el historial de comandos
- Flechas arriba/abajo: Navega por comandos recientes

## 🔌 Plugins de Oh My Zsh <a id="plugins-de-oh-my-zsh"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Edita `~/.zshrc` para activar plugins:

```zsh
plugins=(
  git
  z
  colored-man-pages
  sudo
  wd
)
```

**Plugins recomendados:**

- **git**: Atajos como `gaa` para `git add --all`
- **z**: Navegación rápida entre directorios frecuentes
- **colored-man-pages**: Manuales a color
- **wd**: Marcadores de directorios

## 🛠️ Alias útiles <a id="alias-utiles"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Añade esto a tu `~/.zshrc`, puedes ir a la sección [Antidote](#antidote---gestor-de-plugins-para-zsh) y seguir todo el tutorial para tener una mejor administración y organización de tu `~/.zshrc`:

```zsh
# Actualización del sistema
alias update="sudo apt update && sudo apt upgrade -y && flatpak update"

# Atajos comunes
alias cls="clear"
alias fsh="fastfetch"
alias nsh="neofetch"

# Comandos en español
alias salir="exit"
alias ir="cd"
alias cds="yazi"  # Administrador de archivos
```

Recarga la configuración:

```zsh
source ~/.zshrc
```

## 🚀 Yazi - Navegador de Archivos en Terminal <a id="yazi---navegador-de-archivos-en-terminal"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Yazi es un administrador de archivos rápido y potente escrito en Rust hecho para ser usado de manera eficiente en la terminal.

### Instalación

#### Para Arch Linux (sin necesidad de usar Rustup, omitir todos los demás pasos)

```zsh
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick
```

#### Para Debian/Ubuntu (Yazi debe ser construido con Rustup)

```zsh
sudo apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
```

#### Construir manualmente (necesario si tu distro de Linux no tiene paquetes nativos para Yazi)

##### Instalar Rustup

```zsh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

```zsh
rustup update
```

##### Clona el repositorio y construye Yazi

```zsh
git clone https://github.com/sxyazi/yazi.git
```

```zsh
cd yazi
```

```zsh
cargo build --release --locked
```

##### Añade 'yazi' y 'ya' a tu $PATH

```zsh
sudo mv target/release/yazi target/release/ya /usr/local/bin/
```

### Uso Básico

Iniciar Yazi:

```zsh
yazi 
```

**Navegación:**

- `h`/`←`: Directorio anterior
- `l`/`→`: Entrar al directorio
- `j`/`↓`: Bajar en la lista
- `k`/`↑`: Subir en la lista
- `q`: Salir
- `a`: Crear un archivo o directorio (para crear un directorio debe terminar en `/`)
- `d`: Borrar un archivo o directorio (son dirigidos al portapapeles)
- `D`: Borrar un archivo o directorio (son eliminados permanentemente)
- `y`: Copiar un archivo o directorio
- `Y`: Dejar de copiar el archivo o directorio más reciente 
- `x`: Cortar un archivo o directorio
- `X`: Dejar de cortar el archivo o directorio más reciente
- `p`: Pegar un archivo o directorio (funciona tanto con `y` como con `x`)

## 🧪 Antidote - Gestor de Plugins para Zsh <a id="antidote---gestor-de-plugins-para-zsh"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Antidote es la cura para el manejo lento de plugins en Zsh.

### Instalación

```zsh
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
```

### Configuración

1. Crea los archivos necesarios:

   ```zsh
   touch ~/.zshrc_plugins.txt
   mkdir -p ~/.zshrc.d/
   touch ~/.zshrc.d/aliases.zsh
   touch ~/.zshrc.d/keybindings.zsh
   ```

2. Añade plugins a `~/.zsh_plugins.txt`:

   ```zsh
   zsh-users/zsh-autosuggestions
   zsh-users/zsh-syntax-highlighting
   ```

    - O añade los plugins seleccionadamente curados de este repostorio en tu archivo [`~/.zsh_plugins.txt`](/.zsh_plugins.txt).

3. Añade el siguiente código al archivo `~/.zshrc`:

   ```zsh
   source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
   antidote load
   ```

   - O añade el código ya personalizado out-of-the-box de este repositorio en tu archivo [`~/.zshrc`](/.zshrc).

4. Configura tus aliases y atajos de teclado:

   ### Opción 1: Usar la configuración predefinida

   Copiar configuración de aliases:

   ```zsh
   cp zshrc.d/aliases.zsh ~/.zshrc.d/
   ```

   Copiar configuración de atajos de teclado:

   ```zsh
   cp zshrc.d/keybindings.zsh ~/.zshrc.d/
   ```

   ### Opción 2: Personalizar manualmente

   #### Configurar aliases

   Edita el archivo de aliases con tu editor favorito:

   Para editar con nano:

   ```zsh
   nano ~/.zshrc.d/aliases.zsh
   ```

   #### Configurar atajos de teclado

   Personaliza los atajos de teclado según tus preferencias:

   Para editar con nano:

   ```zsh
   nano ~/.zshrc.d/keybindings.zsh
   ```

   > 💡 **Consejo:** Los archivos de configuración incluyen ejemplos comentados que puedes descomentar o modificar según necesites.

5. Recarga la configuración:

   ```zsh
   exit
   ```

6. ¡Abre otra terminal y disfruta de tu nueva experiencia rápida en Zsh!

## 🎨 Personalización de Powerlevel10k <a id="personalizacion-de-powerlevel10k"></a> <small><a href="#tabla-de-contenidos" title="Volver al índice">↥</a></small>

Después de instalar Oh My Zsh o Antidore con el tema Powerlevel10k, ejecuta el siguiente comando (en caso de que la configuración de Powerlevel10k no haya iniciado automáticamente):

```zsh
p10k configure
```

Sigue el asistente para personalizar tu prompt.
¿Qué tal? ¿Fácil verdad?