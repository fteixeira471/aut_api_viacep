#language: pt
@consulta_cep
Funcionalidade: Consulta de CEP
  Como uma aplicação
  Quero efetuar consultas de CEP
  Para retornar informações sobre o logradouro e outros dados relevantes

  @cep_valido
  Esquema do Cenário: Consultar CEP válido
    Dado um tipo de CEP
      | tipo_cep  | <tipo_cep>  |
    Quando enviar uma requisição GET para a API de consulta de CEP
    Então retorna os dados do CEP consultado

    Exemplos:
      | tipo_cep  |
      | comum     |
      | generico  |


  @cep_inexistente
  Cenário: Consultar CEP inexistente
    Dado um tipo de CEP
      | tipo_cep  | inexistente |
    Quando enviar uma requisição GET para a API de consulta de CEP
    Então retorna houve erro na consulta do CEP


  @cep_invalido
  Esquema do Cenário: Consultar CEP inválido
    Dado um CEP
      | cep | <valor> |
    Quando enviar uma requisição GET para a API de consulta de CEP
    Então a API retorna o status code 400

    Exemplos:
      | valor     |
      | 010100100 |
      | kajklj23  |
      | 12345     |
