# frozen_string_literal: true

Dado('um tipo de CEP') do |table|
  @massa_endereco = MASSA_CEP[table.rows_hash['tipo_cep']].sample
  @cep = @massa_endereco['cep']
end

Dado('um CEP') do |table|
  @cep = table.rows_hash['cep']
end

Quando('enviar uma requisição GET para a API de consulta de CEP') do
  @response = WsCepJson.new.get_search_cep(@cep)
end

Entao('a API retorna o status code {int}') do |status_code|
  expect(@response.code).to eql(status_code), request_info(@response)
end

Entao('retorna os dados do CEP consultado') do
  step 'a API retorna o status code 200'
  expect(@response).to match_json_schema('ws/get_cep_json_schema')
  @massa_endereco.each do |key, value|
    expect(@response.parsed_response[key]).to eql value
  end
end

Entao('retorna houve erro na consulta do CEP') do
  step 'a API retorna o status code 200'
  expect(@response).to match_json_schema('ws/get_cep_json_error_schema')
  expect(@response.parsed_response['erro']).to be true
end
