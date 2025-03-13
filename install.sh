#!/bin/bash

# ASCII Art para o script de instalação
ASCII_ART=$(cat <<'EOF'

   __  ___  ____    _  __   ___   ____   _____
  /  |/  / / __ \  / |/ /  / _ \ / __ \ / ___/
 / /|_/ / / /_/ / /    /  / // // /_/ // /__
/_/  /_/  \____/ /_/|_/  /____/ \____/ \___/

Mondoc.ai - v1.8 - Documentação Inteligente - By.: Walyson GO

----------------------------------------------------

EOF
)

show_ascii_art() {
    clear
    echo "$ASCII_ART"
}

show_ascii_art

# Função para verificar se o comando foi executado com sucesso
check_command_success() {
    if [ $? -ne 0 ]; then
        echo "Error: Command failed. Exiting..."
        exit 1
    fi
    show_ascii_art
    clear
}

# Função para atualizar o Mondoc
update_mondoc() {
    show_ascii_art
    echo "Updating Mondoc..."
    cd /tmp || exit
    curl -O https://raw.githubusercontent.com/WalysonGO/mondoc.ai/master/mondoc > /dev/null 2>&1
    check_command_success
    chmod +x mondoc
    sudo mv mondoc /usr/local/bin/mondoc
    check_command_success
    show_ascii_art
    echo "Mondoc.ai update and configuration completed successfully! Use 'mondoc' to start the Mondoc.ai CLI."
}

if [ -f "/usr/local/bin/mondoc" ]; then
    echo "Mondoc is already installed. Updating..."
    update_mondoc
fi

if [ ! -f "/usr/local/bin/mondoc" ]; then
    show_ascii_art
    echo "Installing Mondoc for the first time..."
    # Passo 1: Download the binary
    echo "Downloading Mondoc binary..."
    curl -O https://raw.githubusercontent.com/WalysonGO/mondoc.ai/master/mondoc > /dev/null 2>&1
    check_command_success

    # Passo 2: Conceder permissão de execução ao binário
    echo "Granting execution permission..."
    chmod +x mondoc
    check_command_success

    # Passo 3: Mover o binário para o diretório de execução global
    echo "Moving binary to /usr/local/bin..."
    sudo mv mondoc /usr/local/bin/mondoc
    check_command_success
    show_ascii_art
    echo "Mondoc.ai installation and configuration completed successfully! Use 'mondoc' to start the Mondoc.ai CLI."
fi
