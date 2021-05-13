# frozen_string_literal: true

# classe contendo metodos de requisicoes para a API de consulta de CEP
class WsCepJson
  include HTTParty

  base_uri 'https://viacep.com.br/ws'

  def get_search_cep(cep, return_format = 'json')
    self.class.get("/#{cep}/#{return_format}")
  end
end
