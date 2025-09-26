Tutorial Definitivo de Zsh

Al iniciar nuestra terminal (con Powerlevel10k y demás) veremos un prompt único:
user_name@pc_name ~

user_name@pc_name: Es el usuario@nombre_del_equipo
~: Es el directorio actual. El símbolo ~ (llamado "tilde") es un atajo para tu carpeta personas (/home/usuario).
Usando Powerlevel10k nos indica con una palomita o tache si el último comando se ejecutó con éxito.


> Navegación <
ls - Listar archivos y directorios
Lista el contenido del directorio actual.

Potencia tus ls:
ls -l: Muestra una lista detallada (permisos, propietario, tamaño, fecha).
ls -a: Muestra todos los archivos, incluyendo los ocultos (que empiezan con .).
ls -h: Usado con -l, muestra el tamaño en formato humano (KB, MB, GB).
ls --color: Muestra la salida del comandos 'ls' pero con colores, diferenciando carpetas de archivos, puedes usarlo en otros comandos, ej: 'ls -CF --color'

Oh My Zhs crea atajos especial para el comando ls:
ll: Es un alias para ls -l
l: Es un alias para ls -CF
la: Es un alias para ls -A

cd - Cambiar de directorio
Te mueves a otra carpeta
cd Descargas: Ir a la carpeta de Descargas
cd: Volver a tu carpeta personal desde cualquier lugar
cd -: Ir al directorio anterior en el que estuviste
cd ..: Subir un nivel de directorio (ir a la carpeta padre)
cd ../..: Subir dos niveles

Consejo (Magia de Zsh): Escribe cd De y presionar Tab. Zhs autocompletará a Descargas/ por ti.

pwd - Mostrar directorio actual
Te dice la ruta completa de dónde te encuentras
pwd
/home/usuario # Ejemplo de salida

> Gestión de Archivos y Directorios <
Crear, borrar, mover y copiar. Las tareas básicas de cualquier explorador de archivos, pero desde la terminal.

mkdir - Crear un directorio
Crea una nueva carpeta
mkdir Proyectos # Crea una carpeta llamada 'Proyectos'
mkdir -p Proyectos/2025/Web # Esto crea 'Proyectos', dentro '2025' y dentro 'Web'

touch - Crear un archivo vacío
Crea un archivo en blanco. Es útil para inicializar archivos de configuración o notas.
touch nota_de_ejemplo.txt
touch app.py

cp - Copiar archivos o directorios
cp nota_de_ejemplo.txt Documentos/ # Copiar un archivo a otro lugar
cp nota_de_ejemplo.txt nota.txt # Copiar un archivo y renombrarlo
cp -r Proyectos/ Proyectos_Backup/ # Copiar un directorio entero y su contenido (es importante poner el -r)

mv - Mover o Renombrar archivos y directorios
Funciona tanto para mover como para renombrar
mv nota_de_ejemplo.txt recordatorio.txt # Renombrar un archivo
mv recordatorio.txt Proyectos/ # Mover un archivo a otro directorio

rm - Eliminar archivos y directorios
¡Cuidado! rm no envía las cosas a la papelera. Una vez borrado, es muy difícil de recuperar.
rm recordatorio.txt # Eliminar un archivo
rmdir Proyectos_viejos # Elimina un directorio vacío
rm -r Proyectos_Backup/ # Eliminar un directorio y TODO su contenido (¡úsalo con extrema precaución!)

cat - Ver el contenido de un archivo
Imprime todo el contenido de un archivo directamente en la terminal. Ideal para archivos cortos.
cat mi_script.sh

less - Ver el contenido de archivos largos
Es como cat, pero permite navegar por el archivo con flechas, buscar texto (escribiendo / seguido de la búsqueda) y salir con la letra 'q'.
less mi_app.py
less archivo_de_log_largo.log

nano - Un editor simplex de texto (Usado para crear este archivo)
Para ediciones rápidas, nano es tu mejor amigo. Es muy intuitivo.
nano lista_de_tarea.txt
¿Guardar?: Ctrl + O (luego Enter)
¿Salir?: Ctrl + X

neovim/vim - Un editor de texto muy pontente, con muchísimas funcionalidades y ajustes. Considera usar neovim para una experiencia más personalizada y moderna de vim, véase Kickstart o Lazy.nvim en GitHub (presets para Neovim).
nvim archivo_de_configuracion.conf
-> Entrarás en Modo Normal, este modo permite visualizar el contenido de tu archivo designado, no puedes "modificar" o escribir como comúnmente se hace al usar un editor de texto normal y corriente. No te preocupes, te enseñaré como usar Neovim/Vim.
	En modo Normal: 
	h: Izquierda
	j: Abajo
	k: Arriba
	l: Derecha
	¡También puedes usar los flechas de navegación!

-> ¿Quieres empezar a editar/escribir en tu archivo?
Presiona 'i', pasarás al modo Insertar (Insert), en este puedes escribir y demás como siempre lo has hecho con un editor de texto normal, llámese Mousepad, FeatherPad, Word, Libreoffice Write, etc.

-> ¿Ya terminaste de escribir?
Procede a presionar 'Esc' en tu teclado, pasarás al modo Normal.
De ahí ingresa 'Shift + :' o básicamente la combinación de teclas que te permita ingresar el caracter ':'
Luego ingresa:
	wq: Guardará el archivo y saldrás de él.
	w: Solo guardar, permaneces en el archivo y pasas al modo Normal.
	q: Sin guardado de cambios, sales del archivo, no es posible salir del archivo usando 'q' sin haber guardado los cambios; solo funciona si no se han hecho modificaciones.
	q!: ¡Sácame de aquí! Saldrás del archivo y todos los cambios anteriores (sin guardar) se borarrán, la perfecta salida de emergencia usando Neovim/Vim.

> El Poder de Zhs y Oh My Zhs <
* Autocompletado Inteligente (Tab)
Rutas: cd /v/l + Tab -> cd /var/log
Opciones de comandos: git ch + Tab -> Sugerirá checkout, cherry-pick, etc.
Argumentos: apt install + Tab -> Te mostrará una lista de paquetes que puedes instalar.

* Búsqueda en el Historial (Ctrl + R o flechas)
¿Recuerdas haber escrito un comando largo hace días?

Presiona Ctrl + R y empieza a escribir una parte del comando. Irá buscando coincidencias en tu historial.
Mejor aún (con Oh My Zsh): Simplemente escribe una parte del comando (ej. sudo apt) y presiona la flecha hacia arriba. Zsh buscará en tu historial solo los comandos que empiecen con eso.

* Plugins de Oh My Zsh

Oh My Zsh viene con cientos de plugins. Se activan editando tu archivo de configuración ~/.zshrc. Busca la línea que dice plugins=(...) y añade los que quieras.

Algunos plugins geniales por defecto o que puedes añadir:

    git: Te da los atajos de Git (gaa para git add --all, gc -m "mensaje" para git commit -m "mensaje", gp para git push, etc.). Escribe alias | grep git para verlos todos.

    z: ¡Cambia vidas! Una vez que visitas un directorio con cd, z lo recuerda. En lugar de escribir cd ~/Proyectos/2025/WebApp/src, puedes escribir z webapp desde cualquier lugar y te llevará allí.

    colored-man-pages: Hace que las páginas del manual (man ls) sean mucho más legibles con colores.

    sudo: ¿Olvidaste poner sudo a un comando? No lo reescribas. Simplemente presiona Esc dos veces y Zsh lo añadirá al principio.

    wd: Función similar a 'z' pero con este puede guardar múltiples "wards" donde se guardará la dirección del directorio en la cual pongas un ward, por ejemplo, si quieres guardar "/home/user/Documentos/Escuela/Matemáticas/Cálculo/Tareas" solo asegúrate de estar en dicha dirección usando 'pwd' y luego ejecuta 'wd add', si quieres ponerle un nombre personalizado al ward basta con 'wd add [nombre]'.

* Alias: Crea tus propios comandos personalizados
Ahorra tiempo creando atajos para comandos largos. Edita tu archivo ~/.zshrc al final.
# Alias:
alias update="sudo apt update && sudo apt upgrade -y && flatpak update"
alias cls="clear"
alias fsh="fastfetch"
alias nsh="neofetch"
alias salir="exit" # Españolizar comando
alias ir="cd" # Españolizar comando
alias cds="yazi" # Alias intuitivo, haciendo referencia a 'cd' que se usa para cambiar de directorios, yazi es un administrador de archivos desde la terminal/CLI.

Después de guardar el archivo, aplica los cambios con 'source ~/.zshrc'
Ahora solo tienes que escribir update para actualizar tu sistema.

* Utilidades del uso diario
sudo - Permisos de superusuario
Ejecuta un comando con privilegios de administrado. Esencial para instalar software o modificar archivos del sistema.
Nota: Ten precaución al usar sudo en comandos que no conoces, sudo no tiene ninguna restricción dentro del sistema y lo puedes romper.
sudo apt install htop

apt - Gestión de Paquetes (Debian/Ubuntu/etc)
TU herramienta para instalar, actualizar y eliminar software.
sudo apt update # Actualizar la lista de paquetes
sudo apt upgrade # Instalar las actualizaciones disponibles
sudo apt install gimp # Instalar un programa
sudo apt remove gimp # Eliminar un programa

find y grep - El Dúo de Búsqueda

    find: Busca archivos y directorios por nombre, tamaño, fecha, etc.

    grep: Busca texto dentro de los archivos.

# Encontrar todos los archivos .conf en el directorio actual y subdirectorios
find . -name "*.conf"

# Buscar la palabra 'database' en todos los archivos de un directorio
grep -r "database" /var/www/html/

Tuberías | y Redirecciones >

    La tubería | conecta la salida de un comando con la entrada de otro.

    La redirección > envía la salida de un comando a un archivo.

# Ejemplo de tubería: listar todos los procesos y filtrar solo los que contengan 'firefox'
ps aux | grep firefox

# Ejemplo de redirección: guardar la lista de archivos en un fichero de texto
ls -l > lista_archivos.txt

* Atajos de Teclado Imprescindibles 

    Copiar: Ctrl + Shift + C

    Pegar: Ctrl + Shift + V

    Limpiar la pantalla: Ctrl + L (o el alias cls que creamos)

    Cancelar un comando en ejecución: Ctrl + C

    Mover el cursor al inicio de la línea: Ctrl + A

    Mover el cursor al final de la línea: Ctrl + E

    Salir de la terminal: exit o Ctrl + D


> Una forma de navejar entre los directorios desde la terminal -> Yazi <
Yazi es un administrador de archivos/directorios basado en terminal/CLI, es pontente, rápido y escrito en Rust.

Al principio puede parecer muy imponente por su forma de cambiar entre directorios pero es demasiado sencillo y fácil de usar, incluso más que los administradores de archivos convencionales.

-> Primer paso: Invocar a yazi.
¿Cómo se hace eso?
Una vez que yazi ha sido instalado, ya sea compilado y construido desde cero utilizando rustup (Rust) o mediante un gestor de paquetes, y añadido a nuestra $PATH, podemos ejecutar:
> home/$USER ~ yazi

Esto dirigirá al directorio /home/$USER, podrá ver todas sus carpetas/directorios.

Navegación:
-> Usando flechas:
   ^
<-   ->  Con estas flechas podrás cambiar rápidamente entre directorios y carpetas

h: Moverte a la izquierda; regresa. (Mismo comportamiento que <-)
l: Moverte a la derecha; ir al siguiente. (Mismo comportamiento que ->)
j: Moverte hacia abajo; navegar en la carpeta. (Mismo comportamiento que flecha superior)
k: Moverte hacia la derecha; navegar en la carpeta. (Mismo comportamiento que flecha inferior)


> Antidote - La cura para configuración lenta del shell zsh <
Antidote es un plugin manager para zsh, está basado en Antibody (versión legacy) y que a su vez está basado en el abandonado Antigen, Antidote permite agregar y administrar plugins de una manera mucho más rápida, reduciendo drásticamente los tiempos de carga de dichos plugins.

- ¿Cómo puedo usar Antidote?
1. Ejecuta e instala mediante git:
```bash
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
```
2. A continuación crea en tu home el siguiente archivo y carpeta:
```bash
touch .zshrc_plugins.txt
mkdir .zshrc.d/
```

3. Dentro del directorio ``.zshrc.d/`` crea los siguientes archivos:
```bash
touch aliases.zsh
touch keybindings.zsh
```

4. Copia el contenido de cada texto a tus respectivos archivos, si quieres omitir todo esto también sería posible clonar el repositorio usando git.

5. Sal de la consola, abre una nueva, deberías ver el *wizard prompt* de Powerlevel10k para empezar a personalizarlo, luego de eso, tendrás una experiencia out-of-the-box usando zsh.
