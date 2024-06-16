#!/bin/bash

detect_distro() {
    if [ -f /etc/os-release ]; then
        . /etc/os-release
        DISTRO=$ID
    else
        echo "Distribuição Linux não suportada."
        exit 1
    fi
}

install_ubuntu_debian() {
    sudo apt update
    while read -r program; do
        sudo apt install -y "$program"
    done < programs_list.txt
}

install_arch() {
    sudo pacman -Syu
    while read -r program; do
        sudo pacman -S --noconfirm "$program"
    done < programs_list.txt
}

edit_programs_list() {
    nano programs_list.txt
}

main_menu() {
    echo "Bem-vindo ao script de instalação de programas"
    echo "Distribuição detectada: $DISTRO"
    echo "Escolha uma opção:"
    echo "1. Instalar programas"
    echo "2. Editar lista de programas"
    echo "3. Sair"
    read -p "Opção: " option

    case $option in
        1)
            case $DISTRO in
                ubuntu|debian)
                    install_ubuntu_debian
                    ;;
                arch)
                    install_arch
                    ;;
                *)
                    echo "Distribuição Linux não suportada."
                    ;;
            esac
            ;;
        2)
            edit_programs_list
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Opção inválida."
            ;;
    esac
}

detect_distro
main_menu
