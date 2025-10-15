# 🚀 The Ultimate Zsh Tutorial

[![README en Español](https://img.shields.io/badge/README-en%20Español-blue.svg)](README-es.md)

## 📚 Table of Contents <a id="table-of-contents"></a>

1. [Zsh Installation](#zsh-installation)
2. [Introduction](#introduction)
3. [Basic Navigation](#basic-navigation)
4. [File and Directory Management](#file-and-directory-management)
5. [Day-to-Day Utilities](#day-to-day-utilities)
6. [Searches](#searches)
7. [Pipes and Redirections](#pipes-and-redirections)
8. [Essential Keyboard Shortcuts](#essential-keyboard-shortcuts)
9. [Text Editors](#text-editors)
10. [The Power of Zsh and Oh My Zsh](#the-power-of-zsh-and-oh-my-zsh)
11. [Oh My Zsh Plugins](#oh-my-zsh-plugins)
12. [Useful Aliases](#useful-aliases)
13. [Yazi - Terminal File Browser](#yazi---terminal-file-browser)
14. [Antidote - Zsh Plugin Manager](#antidote---zsh-plugin-manager)
15. [Powerlevel10k Customization](#powerlevel10k-customization)

## 📦 Zsh Installation <a id="zsh-installation"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

To get started with the content of this repository, you'll need to install `zsh` and set it as your default shell.
Depending on your Linux distribution, the command to install `zsh` will vary. It can usually be found natively in various package managers.

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

### Post-installation

After installing `zsh`, you can set it as your default shell by running the following command:

```bash
chsh -s $(which zsh)
```

Finally, for `zsh` to be applied correctly, you will need to log out (and log back in) or simply restart your system.

## 🏠 Introduction <a id="introduction"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

When we start our terminal, we will see a unique prompt:

```text
user_name@pc_name ~
```

- `user_name@pc_name`: This is the user@hostname
- `~`: This is the current directory. The `~` symbol (called a "tilde") is a shortcut for your home folder (`/home/user/`).

> **Note**: Using Powerlevel10k, you will see a visual indicator (✓ or ✗) that shows whether the last command was successful or failed.

## 📂 Basic Navigation <a id="basic-navigation"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

### `ls` - List files and directories

Lists the content of the current directory.

**Useful options:**

- `ls -l`: Shows a detailed list (permissions, owner, size, date).
- `ls -a`: Shows all files, including hidden ones (those starting with .).
- `ls -h`: Used with `-l`, shows the size in a human-readable format (KB, MB, GB).
- `ls --color`: Displays the output with colors, differentiating folders from files.

**Oh My Zsh Shortcuts:**

```zsh
alias ll='ls -l'
alias l='ls -CF'
alias la='ls -A'
```

### `cd` - Change directory

- `cd Downloads`: Go to the Downloads folder
- `cd` or `cd ~`: Return to your home folder
- `cd -`: Return to the previous directory
- `cd ..`: Go up one level
- `cd ../..`: Go up two levels

> **Tip**: Type `cd Do` and press `Tab`. Zsh will autocomplete to `Downloads/` for you.

### `pwd` - Show current directory

Shows the full path of the current directory.

```zsh
pwd
# Output: /home/user
```

## 📁 File and Directory Management <a id="file-and-directory-management"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

### `mkdir` - Create directories

Create a simple directory:

```zsh
mkdir Projects
```

Create nested directories:

```zsh
mkdir -p Projects/2025/Web
```

### `touch` - Create empty files

```zsh
touch note.txt
touch app.py
```

### `cp` - Copy files and directories

Copy a file:

```zsh
cp file.txt Documents/
```

Copy and rename:

```zsh
cp file.txt file_copy.txt
```

Copy directories (use -r for recursive):

```zsh
cp -r directory/ directory_copy/
```

### `mv` - Move or rename

Rename a file:

```zsh
mv old.txt new.txt
```

Move a file:

```zsh
mv document.txt Documents/
```

Move and rename:

```zsh
mv file.txt Documents/new_name.txt
```

### `rm` - Delete files and directories

> ⚠️ **Warning!** Deleted files do not go to the trash.

Delete a file:

```zsh
rm file.txt
```

Delete an empty directory:

```zsh
rmdir empty_directory/
```

Delete a directory with content (Use with caution!):

```zsh
rm -r directory_with_content/
```

## 🛠️ Day-to-Day Utilities <a id="day-to-day-utilities"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

### `sudo` - Execute as superuser

```zsh
sudo command
```

### Package management (Debian/Ubuntu)

Update package list:

```zsh
sudo apt update
```

Upgrade the system:

```zsh
sudo apt upgrade
```

Install software:

```zsh
sudo apt install package_name
```

Remove software:

```zsh
sudo apt remove package_name
```

## 🔍 Searches <a id="searches"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

### `find` - Search for files

Find .conf files:

```zsh
find . -name "*.conf"
```

Find files modified in the last 7 days:

```zsh
find /path -mtime -7
```

### `grep` - Search within files

Search for "error" in .log files:

```zsh
grep "error" *.log
```

Recursive search:

```zsh
grep -r "word" /directory/
```

## 🔄 Pipes and Redirections <a id="pipes-and-redirections"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

Pipe (|): Connect commands

```zsh
ps aux | grep firefox
```

Redirection (>): Save output to a file

```zsh
ls -l > file_list.txt
```

Append to the end of a file (>>)

```zsh
echo "new line" >> file.txt
```

## ⌨️ Essential Keyboard Shortcuts <a id="essential-keyboard-shortcuts"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

- `Ctrl + C`: Cancel the current command
- `Ctrl + D`: Close the terminal
- `Ctrl + L`: Clear the screen
- `Ctrl + A`: Go to the beginning of the line
- `Ctrl + E`: Go to the end of the line
- `Ctrl + U`: Delete up to the beginning of the line
- `Ctrl + K`: Delete up to the end of the line
- `Ctrl + W`: Delete the previous word
- `Ctrl + R`: Search in history

## 📝 Text Editors <a id="text-editors"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

### `nano` - Simple editor

```zsh
nano file.txt
```

**Basic commands:**

- `Ctrl + O`: Save
- `Ctrl + X`: Exit
- `Ctrl + K`: Cut line
- `Ctrl + U`: Paste

### `neovim`/`vim` - Advanced editor

```zsh
nvim file.conf
```

**Main modes:**

1.  **Normal Mode (on open)**: For navigation
    - `h`, `j`, `k`, `l`: Move (left, down, up, right)
    - `i`: Enter Insert mode
    - `v`: Visual mode to select text

2.  **Insert Mode (i)**: For writing text
    - `Esc`: Return to Normal mode

3.  **Commands (from Normal mode, press `:`)**:
    - `:w`: Save
    - `:q`: Quit
    - `:wq`: Save and quit
    - `:q!`: Force quit without saving

## ⚡ The Power of Zsh and Oh My Zsh <a id="the-power-of-zsh-and-oh-my-zsh"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

### Smart Autocompletion (Tab)

- Paths: `cd /v/l` + `Tab` → `cd /var/log`
- Commands: `git ch` + `Tab` → Shows options like `checkout`, `cherry-pick`
- Packages: `apt install` + `Tab` → Lists available packages

### History Search

- `Ctrl + R`: Searches through command history
- Up/Down arrows: Navigate through recent commands

## 🔌 Oh My Zsh Plugins <a id="oh-my-zsh-plugins"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

Edit `~/.zshrc` to enable plugins:

```zsh
plugins=(
  git
  z
  colored-man-pages
  sudo
  wd
)
```

**Recommended plugins:**

- **git**: Shortcuts like `gaa` for `git add --all`
- **z**: Fast navigation between frequent directories
- **colored-man-pages**: Manuals in color
- **wd**: Directory bookmarks

## 🛠️ Useful Aliases <a id="useful-aliases"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

Add this to your `~/.zshrc`. You can go to the [Antidote](#antidote---zsh-plugin-manager) section and follow the tutorial for better management and organization of your `~/.zshrc`:

```zsh
# System update
alias update="sudo apt update && sudo apt upgrade -y && flatpak update"

# Common shortcuts
alias cls="clear"
alias fsh="fastfetch"
alias nsh="neofetch"

# Spanish commands
alias salir="exit"
alias ir="cd"
alias cds="yazi"  # File manager
```

Reload the configuration:

```zsh
source ~/.zshrc
```

## 🚀 Yazi - Terminal File Browser <a id="yazi---terminal-file-browser"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

Yazi is a fast and powerful file manager written in Rust, designed for efficient use in the terminal.

### Installation

#### For Arch Linux (no need to use Rustup, skip all other steps)

```zsh
sudo pacman -S yazi ffmpeg 7zip jq poppler fd ripgrep fzf zoxide resvg imagemagick
```

#### For Debian/Ubuntu (Yazi must be built with Rustup)

```zsh
sudo apt install ffmpeg 7zip jq poppler-utils fd-find ripgrep fzf zoxide imagemagick
```

#### Build manually (necessary if your Linux distro does not have native packages for Yazi)

##### Install Rustup

```zsh
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh
```

```zsh
rustup update
```

##### Clone the repository and build Yazi

```zsh
git clone https://github.com/sxyazi/yazi.git
```

```zsh
cd yazi
```

```zsh
cargo build --release --locked
```

##### Add 'yazi' and 'ya' to your $PATH

```zsh
sudo mv target/release/yazi target/release/ya /usr/local/bin/
```

### Basic Usage

Start Yazi:

```zsh
yazi
```

**Navigation:**

- `h`/`←`: Previous directory
- `l`/`→`: Enter directory
- `j`/`↓`: Move down the list
- `k`/`↑`: Move up the list
- `q`: Quit
- `a`: Create a file or directory (must end with `/` to create a directory)
- `d`: Delete a file or directory (sent to the clipboard/trash)
- `D`: Permanently delete a file or directory
- `y`: Copy a file or directory
- `Y`: Stop copying the most recent file or directory
- `x`: Cut a file or directory
- `X`: Stop cutting the most recent file or directory
- `p`: Paste a file or directory (works with both `y` and `x`)

## 🧪 Antidote - Zsh Plugin Manager <a id="antidote---zsh-plugin-manager"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

Antidote is the cure for slow Zsh plugin management.

### Installation

```zsh
git clone --depth=1 https://github.com/mattmc3/antidote.git ${ZDOTDIR:-$HOME}/.antidote
```

### Configuration

1.  Create the necessary files:

    ```zsh
    touch ~/.zsh_plugins.txt
    mkdir -p ~/.zshrc.d/
    touch ~/.zshrc.d/aliases.zsh
    touch ~/.zshrc.d/keybindings.zsh
    ```

2.  Add plugins to `~/.zsh_plugins.txt`:

    ```zsh
    zsh-users/zsh-autosuggestions
    zsh-users/zsh-syntax-highlighting
    ```

    - Or add the carefully curated plugins from this repository to your [`~/.zsh_plugins.txt`](/.zsh_plugins.txt) file.

3.  Add the following code to your `~/.zshrc` file:

    ```zsh
    source ${ZDOTDIR:-$HOME}/.antidote/antidote.zsh
    antidote load
    ```

    - Or add the out-of-the-box customized code from this repository to your [`~/.zshrc`](/.zshrc) file.

4.  Configure your aliases and keybindings:

    ### Option 1: Use the predefined configuration

    Copy alias configuration:

    ```zsh
    cp zshrc.d/aliases.zsh ~/.zshrc.d/
    ```

    Copy keybinding configuration:

    ```zsh
    cp zshrc.d/keybindings.zsh ~/.zshrc.d/
    ```

    ### Option 2: Customize manually

    #### Configure aliases

    Edit the aliases file with your favorite editor:

    To edit with nano:

    ```zsh
    nano ~/.zshrc.d/aliases.zsh
    ```

    #### Configure keybindings

    Customize the keybindings according to your preferences:

    To edit with nano:

    ```zsh
    nano ~/.zshrc.d/keybindings.zsh
    ```

    > 💡 **Tip:** The configuration files include commented-out examples that you can uncomment or modify as needed.

5.  Reload the configuration:

    ```zsh
    exit
    ```

6.  Open another terminal and enjoy your new, fast Zsh experience!

## 🎨 Powerlevel10k Customization <a id="powerlevel10k-customization"></a> <small><a href="#table-of-contents" title="Back to top">↥</a></small>

After installing Oh My Zsh or Antidote with the Powerlevel10k theme, run the following command (in case the Powerlevel10k configuration wizard did not start automatically):

```zsh
p10k configure
```

Follow the wizard to customize your prompt.
How about that? Easy, right?
