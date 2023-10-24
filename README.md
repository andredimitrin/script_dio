# Documentação do Script

## Descrição

Este é um script Bash que automatiza tarefas comuns em servidores Linux. O script executa as seguintes ações:

1. Atualiza o servidor.
2. Instala o servidor web Apache2.
3. Instala o utilitário Unzip.
4. Baixa e copia os arquivos de uma aplicação de um repositório no GitHub.

## Uso

Para executar o script, siga estas etapas:

1. Abra um terminal no servidor.

2. Certifique-se de que o script tenha permissão de execução:

   ```bash
   chmod +x meu_script.sh
   ```

3. Execute o script:

   ```bash
   ./meu_script.sh
   ```

O script realizará automaticamente as ações mencionadas.

## Requisitos

Antes de usar o script, certifique-se de que atende aos seguintes requisitos:

- Você deve estar logado como um usuário com permissões de superusuário (ou use `sudo` conforme necessário) para executar o script.
- O servidor deve estar conectado à internet para permitir a atualização e instalação de pacotes.
- Certifique-se de que o Git esteja instalado em seu servidor se você planeja clonar repositórios do GitHub no futuro.

## Personalização

Você pode personalizar este script editando as seguintes variáveis no início do arquivo:

- `download_url`: A URL do repositório do GitHub que você deseja baixar.
- `temp_dir`: O diretório temporário onde o arquivo será baixado e descompactado.
- `app_dir`: O diretório onde os arquivos da aplicação serão copiados.

Aqui está um exemplo:

```bash
download_url="https://github.com/seu-usuario/seu-repositorio/archive/refs/heads/main.zip"
temp_dir="/tmp"
app_dir="/var/www/html"
```

## Autor

Este script foi escrito por André Dimitrin.

---
