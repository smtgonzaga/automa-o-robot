# Testes de Automação com Robot Framework - AutomatizAI da QAXperience 

Este repositório contém um conjunto de testes de automação desenvolvidos com o Robot Framework como parte do exercício prático do curso "AutomatizAi - Robot Framework e ChatGPT" ministrado por Fernando Papito no QAXperience (https://qaxperience.com/pt). Os testes são projetados para verificar o processo de cadastro no site WalkDog, incluindo casos de sucesso, cenários com campos obrigatórios incompletos, validações de CPF e e-mail inválidos. A automação é realizada usando a biblioteca SeleniumLibrary e serve como um exemplo prático de como criar testes de UI eficazes e escaláveis com uma das melhores ferramentas de automação disponíveis.

Sinta-se à vontade para usar este repositório como um recurso de aprendizado ou como ponto de partida para seus próprios projetos de automação. Contribuições e melhorias são sempre bem-vindas!

Espero que essa descrição atenda às suas necessidades. Você pode personalizá-la conforme necessário.

## Pré-requisitos

Certifique-se de ter os seguintes pré-requisitos instalados:

- Python
- Robot Framework
- Biblioteca SeleniumLibrary
- Google Chrome (ou outro navegador suportado pelo Selenium)

## Instalação

1. Clone este repositório em sua máquina local:

`git clone https://github.com/vivianflima/automation-robot-walkdog.git`

2. Instale as dependências do Python:

`pip install -r requirements.txt`


## Configuração

Antes de executar os testes, certifique-se de configurar as variáveis no arquivo `SignupPage.robot` para refletir suas informações de teste:

- `${Nome}`: Seu nome completo.
- `${Email}`: Seu endereço de e-mail.
- `${CPF}`: Um número de CPF válido.
- `${CEP}`: Um CEP válido.
- `${Numero}`: Um número de endereço.
- `${UploadArquivo}`: O caminho para o arquivo de upload.

## Executando os Testes

Para executar os testes, use o seguinte comando:

`robot cadastro.robot`

### Executar Testes com Tags

Você pode executar testes com base em tags específicas usando o seguinte comando:

`robot -i <tag> cadastro.robot`

Substitua `<tag>` pela tag que deseja executar. Por exemplo, para executar apenas os testes com a tag `happy_path`, use o seguinte comando:

`robot -i happy_path cadastro.robot`
