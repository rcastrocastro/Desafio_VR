class Establishment
  include HTTParty
  base_uri CONFIG['BASE_URI']
  default_timeout 120

  def initialize() end

  def consultProductsEstablishments
    result = self.class.get('/api-web/comum/enumerations/VRPAT')

    result
  end

  def catEstablishment(response, chave)
    data = JSON.parse(response.body)
    type_of_establishment = data[chave].sample

    type_of_establishment
  end
end
