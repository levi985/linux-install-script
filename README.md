# Script de Instalação de Programas para Linux

Este é um script em Bash para facilitar a instalação de vários programas no Linux de uma única vez. Ele suporta as distribuições Ubuntu/Debian e Arch. Você pode editar a lista de programas conforme a sua necessidade.

## Como Usar

1. Clone este repositório ou copie os arquivos para o seu sistema.
    ```bash
    git clone https://github.com/levi985/linux-install-script.git
    cd linux-install-script
    ```

2. Torne o script executável:
    ```bash
    chmod +x install_programs.sh
    ```

3. Execute o script:
    ```bash
    ./install_programs.sh
    ```

4. Escolha uma opção no menu:
    - **Instalar programas**: Inicia o processo de instalação dos programas listados em `programs_list.txt`.
    - **Editar lista de programas**: Abre o editor de texto `nano` para editar `programs_list.txt`.
    - **Sair**: Fecha o script.

## Estrutura do Projeto

- `install_programs.sh`: Script principal que gerencia a instalação dos programas.
- `programs_list.txt`: Arquivo de texto contendo a lista de programas a serem instalados.

## Personalização

Para adicionar ou remover programas da lista, edite o arquivo `programs_list.txt`:
```txt
bashtop
cmatrix
nautilus
gnome-terminal
vim
nano
emacs
git
curl
wget
htop
neofetch
screenfetch
tree
tmux
gimp
vlc
audacity
blender
inkscape
kdenlive
obs-studio
libreoffice
thunderbird
firefox
chromium
spotify
discord
slack
telegram-desktop
qbittorrent
transmission
deluge
gparted
synaptic
virtualbox
docker
vagrant
nodejs
npm
yarn
python3
python3-pip
ruby
ruby-dev
golang
rustc
openjdk-11-jdk
mysql-server
postgresql
