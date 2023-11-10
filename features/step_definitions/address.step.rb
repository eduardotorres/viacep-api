Dado('que eu acesso a API via cep para pesquisar o seguinte cep') do
  @address_page = AddressPage.new
end

Quando('eu realizar a solicitação GET na API') do |table|
  data = table.hashes.first
  @cep = data['CEP']
  @response = @address_page.get_address(@cep)
end

Entao('devo visualizar o endereço completo') do
  expected_address = {
    'cep' => '58045-230',
    'logradouro' => 'Rua Tabelião José Ramalho Leite',
    'complemento' => '',
    'bairro' => 'Cabo Branco',
    'localidade' => 'João Pessoa',
    'uf' => 'PB',
    'ibge' => '2507507',
    'gia' => '',
    'ddd' => '83',
    'siafi' => '2051'
  }

  expect(@response).to eql expected_address
end

E('validar se o ddd pertence a paraiba') do
  expect(@response['ddd']).to eql "83"
end