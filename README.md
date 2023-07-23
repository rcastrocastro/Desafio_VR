# Testes de Backend (Ruby - Cucumber, HTTParty) e Frontend (JavaScript - Cypress) para o Desafio VR

Este projeto tem como objetivo demonstrar a automação de testes de Backend e Frontend para o Desafio da VR, utilizando as bibliotecas Cucumber e HTTParty (Ruby) e Cypress (JavaScript). O Desafio da VR é uma aplicação que fornece informações sobre estabelecimentos comerciais.

## Pré-requisitos
Antes de executar os testes, verifique se você possui as seguintes ferramentas instaladas em seu ambiente de desenvolvimento:

### Backend
- Ruby (com Bundler)
- Cucumber

### Frontend
- Node.js (com npm ou yarn)

### Instalação
1. Clone este repositório em sua máquina local:
```bash
git clone https://github.com/rcastrocastro/desafio-vr-testes.git
cd desafio-vr-testes
```

2. Instale as dependências para os testes de Backend:
```bash
cd backend
bundle install
```

3. Instale as dependências para os testes de Frontend:
```bash
cd ../frontend
npm install   # ou "yarn install" se estiver usando yarn
```

### Configuração
Antes de executar os testes, é necessário configurar o ambiente.

#### **Backend**
No diretório `backend`, você encontrará arquivos de configuração para o projeto. Certifique-se de configurar o ambiente corretamente para os testes.

#### **Frontend**
No diretório `frontend`, você encontrará arquivos de configuração do Cypress e outras configurações. Certifique-se de configurar o ambiente corretamente para os testes. 

### Executando os testes

#### Testes de Backend
Para executar os testes de Backend, basta executar o seguinte comando dentro do diretório `backend`:

```bash
cd backend
cucumber
```
Os testes serão executados e os resultados serão exibidos no console. O report se encontra na raiz do projeto `backend` na pasta **report**.

#### Testes de Frontend
Para executar os testes de Frontend, você precisa ter o Cypress instalado. Para iniciar o Cypress, execute o seguinte comando dentro do diretório `frontend`:

```bash
cd frontend
npm run cypress:open   # ou "yarn cypress:open" se estiver usando yarn
```

Uma janela do Cypress será aberta, e você poderá escolher o navegador em que deseja executar os testes. Clique em um arquivo de teste para executá-lo no navegador selecionado.
Para executar os testes e gerar o report execute o comando dentro do diretório `frontend`

```bash
npm run test
```
O teste será executado e o report será gerado dentro da pasta **cypress/reports**

### Estrutura do Projeto
A estrutura do projeto é a seguinte:

```
desafio-vr-testes/
|-- backend/
|   |-- features/
|   |   |-- specs/
|   |   |   |-- establishment.feature  
|   |   |-- step_definitions/
|   |   |   |-- establishment_step.rb
|   |   |-- support/
|   |   |   |-- config/
|   |   |   |   |-- environments
|   |   |   |   |   |-- dev.yml
|   |   |   |-- data/
|   |   |   |   |-- schemas/
|   |   |   |   |   |-- list_Products_Establishment.json
|   |   |   |-- services/
|   |   |   |   |-- establishment_service.rb
|   |   |   |-- env.rb
|   |   |   |-- hooks.rb
|   |-- report/
|   |   |-- report.html
|   |   |-- report.json
|   |-- .gitignore
|   |-- cucumber.yml  
|   |-- Gemfile
|-- frontend/
|   |-- cypress/
|   |   |-- integration/
|   |   |   |-- home_spec.js
|   |   |-- plugins/
|   |   |   |-- index.js
|   |   |-- reports/
|   |   |   |-- html/
|   |   |   |   |-- assets/
|   |   |   |   |-- screenshots/
|   |   |   |   |-- videos/
|   |   |   |   |-- index.html
|   |   |-- support/
|   |   |   |-- config/
|   |   |   |   |-- elements_page.js
|   |   |   |-- pages/
|   |   |   |   |-- CommonPage.js
|   |   |   |   |-- HomePage.js
|   |   |   |-- commands.js
|   |   |   |-- index.js
|   |-- .gitignore
|   |-- cypress.json
|   |-- package.json
|-- README.md
```

- O diretório `backend/features/specs` contém os arquivos de especificação em Gherkin e os passos definidos em Ruby utilizando Cucumber.
- O diretório `backend/features/step_definitions` contém os passos definidos em Ruby para os testes de Backend.
- O diretório `backend/features/support` contém os arquivos de suporte para os testes de Backend.
- O diretório `backend/Gemfile` contém as dependências do projeto Ruby para os testes de Backend.
- O diretório `frontend` contém os testes de Frontend escritos em JavaScript usando o framework Cypress.
- O arquivo `cypress.json` no diretório `frontend` contém configurações específicas do Cypress.
- O arquivo `frontend/package.json` contém as dependências do projeto Node.js para os testes de Frontend com Cypress.
