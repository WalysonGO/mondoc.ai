# Mondoc.ai

## Sobre o Projeto
O **Mondoc.ai** é uma ferramenta automatizada para geração de documentação de código-fonte em projetos de desenvolvimento. Ele analisa arquivos de código em diversas linguagens, como Python, JavaScript, TypeScript e PHP, e gera documentação detalhada no formato **Markdown**.

## Objetivo do Projeto
O principal objetivo do **Mondoc.ai** é facilitar a criação de documentação técnica para projetos de software, garantindo que os arquivos tenham descrições estruturadas sobre:
- **Visão geral do código**
- **Modo de uso**
- **Principais funcionalidades**
- **Dependências necessárias**
- **Estrutura do código (funções, classes, métodos, etc.)**
- **Detalhes técnicos**
- **Restrições e limitações**
- **Melhores práticas**

## Principais Funcionalidades
- ✅ **Análise automática do código**: Identifica arquivos suportados e extrai informações relevantes.
- ✅ **Suporte a múltiplos idiomas**: Gera documentação em **inglês** ou **português**, conforme a escolha do usuário.
- ✅ **Armazenamento de progresso**: Mantém um arquivo temporário (`.mondoc_ai.temp`) para evitar geração duplicada.
- ✅ **Personalização**: Permite ao usuário definir o nome da pasta de documentação e o idioma desejado.
- ✅ **Limpeza automática**: Possui função para deletar arquivos temporários e remover a documentação gerada caso necessário.
- ✅ **Suporte a interrupções**: Se o usuário interromper a execução (`CTRL + C`), ele deleta os últimos arquivos processados para evitar inconsistências.
- ✅ **Interface interativa**: Guia o usuário através de perguntas simples para configurar a documentação.

## Requisitos
- Sistema operacional: **Linux** ou **Windows com WSL**
- Nenhuma dependência adicional é necessária

## Instalação

### Linux
1. Baixe e execute o script de instalação:
   ```sh
   curl -O https://raw.githubusercontent.com/WalysonGO/mondoc.ai/main/install.sh && chmod +x install.sh && ./install.sh
   ```

O script irá:
- Clonar o repositório
- Configurar as permissões necessárias
- Oferecer a opção de instalar globalmente
- Perguntar se você deseja executar o Mondoc imediatamente

### Windows (WSL)
1. Instale o WSL seguindo as instruções oficiais da Microsoft:
   ```sh
   wsl --install
   ```

2. Após reiniciar o computador, abra o WSL e execute o script de instalação como descrito acima.

## Como Usar
Simplesmente execute o binário do Mondoc:
```sh
./mondoc
```

Ou se você instalou no sistema:
```sh
mondoc
```

O Mondoc irá guiá-lo através de um processo interativo:

1. Primeiro, solicitará o caminho do projeto que você deseja documentar
2. Em seguida, perguntará o nome da pasta onde a documentação será salva (o padrão é `docs`)
3. Por fim, você poderá escolher o idioma da documentação (português ou inglês)

Após essas escolhas, o Mondoc começará automaticamente a análise e geração da documentação.

## Fluxo de Uso

```
$ mondoc

👋 Bem-vindo ao Mondoc.ai!

📂 Digite o caminho do projeto: /seu/projeto
📁 Nome da pasta de documentação [docs]:
🌎 Idioma da documentação (pt_br/en_us):

🚀 Gerando documentação...
✨ Documentação gerada com sucesso em: /seu/projeto/docs/
```

## Casos de Uso
- 🔹 **Projetos sem documentação**: Para equipes que precisam gerar rapidamente uma base de documentação técnica.
- 🔹 **Manutenção de código legado**: Facilita a compreensão de projetos antigos sem documentação formal.
- 🔹 **Automatização no workflow**: Pode ser integrado em pipelines de CI/CD para manter a documentação sempre atualizada.
- 🔹 **Padronização**: Ajuda times a seguir um formato consistente de documentação.

---

Desenvolvido com ❤️ para facilitar a documentação de projetos. 🚀
