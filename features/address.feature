# language: pt
# created by eduardo.araujo at 09/11/2023

  Funcionalidade: API de endereço

    @list_address
    Esquema do Cenário: Listar um endereço via CEP
      Dado que eu acesso a API via cep para pesquisar o seguinte cep
      Quando eu realizar a solicitação GET na API
        |  CEP  |
        | <CEP> |
      Então devo visualizar o endereço completo
      E validar se o ddd pertence a paraiba
    Exemplos:
      |    CEP      |
      |  58045230   |