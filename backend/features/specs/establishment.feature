#language: pt

Funcionalidade: Consultar estabelecimentos
  Como um usuário do sistema
  Quero realizar requisições GET na API
  Para que possa consultar um estabelecimento

Cenário: Consultar tipo do estabelecimento
  Quando realizar a requisição GET para consultar o tipo do estabelecimento
  Então o response deverá retornar a chave "typeOfEstablishment"
  