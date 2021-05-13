# frozen_string_literal: true

# modulo de metodos uteis
module Utils
  def request_info(response)
    "> URI: #{response.request.last_uri} \n\n" \
    "> StatusCode: #{response.code} \n\n" \
    "> Response Body\n #{response.body}\n"
  end
end
