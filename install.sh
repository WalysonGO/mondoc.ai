#!/bin/bash

# Função para verificar se o comando foi executado com sucesso
check_command_success() {
    if [ $? -ne 0 ]; then
        echo "Error: Command failed. Exiting..."
        exit 1
    fi
}

# Função para atualizar o Mondoc
update_mondoc() {
    echo "Updating Mondoc..."
    cd /tmp
    curl -O https://raw.githubusercontent.com/WalysonGO/mondoc.ai/master/mondoc
    check_command_success
    chmod +x mondoc
    sudo mv mondoc /usr/local/bin/mondoc
    check_command_success
    echo "Mondoc updated successfully!"
}

# Passo 1: Download the binary
echo "Downloading Mondoc binary..."
curl -O https://raw.githubusercontent.com/WalysonGO/mondoc.ai/master/mondoc
check_command_success

# Passo 2: Conceder permissão de execução ao binário
echo "Granting execution permission..."
chmod +x mondoc
check_command_success

# Passo 3: Mover o binário para o diretório de execução global
echo "Moving binary to /usr/local/bin..."
sudo mv mondoc /usr/local/bin/mondoc
check_command_success

# Passo 4: Execução do binário
echo "Would you like to run Mondoc now? (Y/N)"
read -r run_mondoc
if [[ "$run_mondoc" == "Y" || "$run_mondoc" == "y" ]]; then
    echo "Executing Mondoc..."
    mondoc
fi

echo "Mondoc.ai installation and configuration completed successfully!"
