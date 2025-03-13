# Mondoc.ai

## Sobre o Projeto
O **Mondoc.ai** é uma ferramenta inteligente de documentação automatizada para projetos de desenvolvimento. Ele analisa arquivos de código em diversas linguagens, como Python, JavaScript, TypeScript e PHP, e gera documentação detalhada no formato **Markdown**. Com integração ao Git, ele é capaz de identificar mudanças no código e atualizar apenas a documentação necessária. Também otimiza para visualização padrão com o softwares especializados como o **Obsidian**.

## Novidades
- 🆕 **Suporte a Obsidian e outros visualizadores de Markdown**: A documentação agora é otimizada para ser utilizada com aplicativos como Obsidian, permitindo uma navegação mais interativa e rica em recursos através dos seus projetos documentados.

## Objetivo do Projeto
O objetivo do **Mondoc.ai** é simplificar a criação de documentação técnica detalhada e acessível, promovendo uma melhor compreensão e manutenção de projetos de software. Isso é alcançado através de descrições estruturadas que incluem:
- Visão geral do código
- Modo de uso
- Principais funcionalidades
- Dependências necessárias
- Estrutura do código (funções, classes, métodos, etc.)
- Detalhes técnicos
- Restrições e limitações
- Melhores práticas

## Principais Funcionalidades
- ✅ **Análise inteligente do código**: Identificação de arquivos e extração de informações relevantes usando inteligência artificial.
- ✅ **Integração com Git**: Atualiza a documentação com base nas mudanças do código.
- ✅ **Suporte a múltiplos idiomas**: Documentação disponível em inglês ou português.
- ✅ **Armazenamento de progresso**: Usa um arquivo temporário para evitar geração duplicada.
- ✅ **Personalização**: Permite definir o nome da pasta de documentação e o idioma.
- ✅ **Limpeza automática**: Função para deletar arquivos temporários e documentação obsoleta.
- ✅ **Suporte a interrupções**: Evita inconsistências deletando os últimos arquivos processados se o usuário interromper a execução.
- ✅ **Interface interativa**: Orienta o usuário na configuração da documentação.

## Requisitos
- Sistema operacional Linux ou Windows com WSL.
- Python 3.12 ou superior.
- Arquivo de configuração `mondoc_ai.config.json` na raiz do projeto.

# Configuração Avançada

Além dos parâmetros básicos (`folder_name`, `language`, `project_notes`), o Mondoc.ai suporta configurações avançadas para personalizar ainda mais a geração de documentação. Essas configurações permitem que os usuários ajustem o comportamento do Mondoc.ai de acordo com as necessidades específicas do seu projeto.

## Parâmetros do Arquivo `mondoc_ai.config.json`

- `folder_name`: Define o nome da pasta onde a documentação será salva. O padrão é `docs`.
- `language`: Escolha entre `en_us` (Inglês) ou `pt_br` (Português) para o idioma da documentação.
- `project_notes`: Campo livre para notas específicas do projeto, como particularidades ou exceções.

### Parâmetros Avançados

- `local_mode` (opcional): Ativa o modo local, evitando chamadas a serviços externos. Útil para ambientes sem conexão com a internet.
- `used_ai` (opcional): Define o motor de IA a ser utilizado para a geração de documentação. Opções incluem `OpenRoute-DeepSeek`, `GPT-3`, entre outros.
- `api_key` (opcional): Chave de API necessária para utilizar certos motores de IA ou serviços externos.

### Exemplo de Configuração Avançada

```json
{
    "folder_name": "docs", // Informe o nome da pasta onde irá ficar a documentação
    "language": "en_us", // pt_br
    "project_notes": "Este projeto não utiliza express, cors, ele é um projeto baseado em lambda.",
    "local_mode": false, // Se true, ele utiliza a api do LM Studio na porta :1234 usando o modelo Ollama Gemma2-2b.
    "used_ai": "OpenRoute-DeepSeek", // ['OpenRoute-DeepSeek', 'OpenRoute-DeepSeek-V3', 'OpenRoute-Gemma-2-9B', 'OpenRoute-OpenAI-GPT-4', 'OpenRoute-OpenAI-GPT-4o', 'OpenRoute-OpenAI-GPT-3.5-Turbo']
    "api_key": "sua_chave_open_route_de_api_aqui", // Acesse o https://openrouter.ai/settings/keys e gere uma secret key para usar.
}
```

## Instalação

### Linux
1. Baixe e execute o script de instalação:
   ```sh
   curl -O https://raw.githubusercontent.com/WalysonGO/mondoc.ai/master/install.sh && chmod +x install.sh && ./install.sh
   ```

⚠️ **Nota**: Após a instalação, você pode encontrar um erro relacionado à biblioteca Python. Este é um problema conhecido que está sendo resolvido.

O script irá:
- Baixar o binário Mondoc
- Configurar as permissões necessárias
- Mover o binário para /usr/local/bin
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


   __  ___  ____    _  __   ___   ____   _____
  /  |/  / / __ \  / |/ /  / _ \ / __ \ / ___/
 / /|_/ / / /_/ / /    /  / // // /_/ // /__
/_/  /_/  \____/ /_/|_/  /____/ \____/ \___/

Mondoc - Documentação Inteligente - By.: Walyson GO

----------------------------------------------------

👋 Welcome to Mondoc.ai!
📁 Enter the directory path you want to document:
Directory: 

📝 Choose documentation folder name:
Folder name (default 'docs'): 

🌎 Choose documentation language:
1. Português (pt_br)
2. English (en_us)
Choose 1 or 2: 

🌐 Is it a local API? (y/n) Default[n]: 

🌐 List of OpenRoute AI models:

FREE:

- OpenRoute-DeepSeek (FREE)
- OpenRoute-DeepSeek-V3 (FREE)
- OpenRoute-Gemma-2-9B (FREE)

PAIDs:

- OpenRoute-OpenAI-GPT-4 (PAID)
- OpenRoute-OpenAI-GPT-4o (PAID)
- OpenRoute-OpenAI-GPT-3.5-Turbo (PAID)


🌐 Choose the OpenRoute AI used. Default['OpenRoute-DeepSeek']: 
🌐 Enter the API key of the OpenRoute AI:


----------------------------------------------------
| Total de arquivos: 9999.
| Falta documentar: 9999.
| Já foram documentados: 9999.
----------------------------------------------------

🤖 Processing documentation for /seu/projeto/docs/
✅ Documentation process complete.
```

## Casos de Uso
- 🔹 **Projetos sem documentação**: Para equipes que precisam gerar rapidamente uma base de documentação técnica.
- 🔹 **Manutenção de código legado**: Facilita a compreensão de projetos antigos sem documentação formal.
- 🔹 **Automatização no workflow**: Pode ser integrado em pipelines de CI/CD para manter a documentação sempre atualizada.
- 🔹 **Padronização**: Ajuda times a seguir um formato consistente de documentação.

---

# Termos de Uso

## Introdução

Bem-vindo ao nosso projeto. Ao utilizar nossa plataforma, você concorda com os seguintes termos e condições estabelecidos neste documento. Estes Termos de Uso regem sua interação com nosso serviço e a utilização de qualquer serviço oferecido por nós.

## Uso do Serviço

Nosso serviço atua como uma ponte para facilitar o uso e a integração de diferentes serviços de inteligência artificial (AI) fornecidos por terceiros. Nosso objetivo é simplificar o acesso a essas tecnologias, oferecendo uma interface unificada para sua utilização.

## Dados de Terceiros

**Não armazenamos dados de terceiros.** Qualquer informação processada por nosso serviço é transmitida diretamente para os serviços de AI de terceiros, e nós não mantemos cópias nem registros dessas informações após a conclusão do processamento. Nosso papel é estritamente o de facilitar o acesso e a interação com essas AIs, sem reter ou armazenar informações pessoais ou de propriedade dos usuários.

## Privacidade

Levamos a privacidade muito a sério e estamos comprometidos em proteger a privacidade dos nossos usuários. Como não coletamos nem armazenamos dados pessoais ou de propriedade dos usuários, seu uso do nosso serviço não implica em riscos à sua privacidade relacionados a dados de terceiros.

## Responsabilidade do Usuário

É responsabilidade do usuário garantir que os dados enviados para processamento não violem direitos autorais ou quaisquer outros direitos de propriedade intelectual. O usuário também deve assegurar-se de que o uso dos serviços de AI de terceiros, acessados através de nossa plataforma, esteja em conformidade com os termos e condições desses serviços específicos.

## Modificações nos Termos de Uso

Reservamo-nos o direito de modificar estes Termos de Uso a qualquer momento. Qualquer alteração será efetiva imediatamente após a publicação da versão atualizada em nosso website. Ao continuar a usar o serviço após essas modificações, você concorda em estar vinculado aos termos atualizados.


---

Desenvolvido com ❤️ para facilitar a documentação de projetos. 🚀
