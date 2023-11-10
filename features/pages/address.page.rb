require 'httparty'

class AddressPage
  include HTTParty
  base_uri 'https://viacep.com.br/ws/'

  def get_address(cep)
    response = self.class.get("/#{cep}/json")
    response.parsed_response
  end
end
