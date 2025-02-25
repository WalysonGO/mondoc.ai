#!/bin/bash

# Função para verificar se o comando foi executado com sucesso
check_command_success() {
    if [ $? -ne 0 ]; then
        echo "Erro: O comando falhou. Saindo..."
        exit 1
    fi
}

# Passo 1: Clonar o repositório
echo "Baixando o repositório do GitHub..."
git clone https://github.com/WalysonGO/mondoc.ai.git
check_command_success

# Passo 2: Navegar para o diretório do projeto
cd mondoc.ai || { echo "Falha ao acessar o diretório do projeto."; exit 1; }

# Passo 3: Conceder permissão de execução ao binário
echo "Concedendo permissão de execução ao binário..."
chmod +x mondoc
check_command_success

# Passo 4: (Opcional) Mover o binário para o diretório de execução global
echo "Deseja mover o binário para o diretório /usr/local/bin? (S/N)"
read -r move_binário
if [[ "$move_binário" == "S" || "$move_binário" == "s" ]]; then
    echo "Movendo o binário para /usr/local/bin..."
    sudo mv mondoc /usr/local/bin/mondoc
    check_command_success
fi

# Passo 5: Execução do binário
echo "Deseja rodar o Mondoc agora? (S/N)"
read -r rodar_mondoc
if [[ "$rodar_mondoc" == "S" || "$rodar_mondoc" == "s" ]]; then
    echo "Executando o Mondoc..."
    ./mondoc
fi

echo "Instalação e configuração do Mondoc.ai concluída com sucesso!"
