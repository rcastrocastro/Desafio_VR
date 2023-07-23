Quando('realizar a requisição GET para consultar o tipo do estabelecimento') do
  @response = @service.call(Establishment).consultProductsEstablishments   # chamada GET da API para salver a resposta na variável global response
end

Então('o response deverá retornar a chave {string}') do |expect_chave|
  expect(@response.code).to eql 200  # validando o código da resposta
  expect(@response.message).to eql 'OK' # validando a mensagem da respota
  establishment = @service.call(Establishment).catEstablishment(@response, expect_chave) # pegando o estabalecimento sorteado para imprimir
  expect(establishment).not_to be_nil # validando que a variavel não está vazia
  p "Type of Establishment: #{establishment}" # imprimindo no terminal o estabalecimento
  expect(@response.body).to match_json_schema('list_Products_Establishment')  # validando o shema da api
end
