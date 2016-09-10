#language: pt

Funcionalidade: Pesquisa CEPs
  Usuários podem encontrar informações relacionadas a um CEP

  Cenário: Usuário pesquisa por CEP
    Quando pesquiso pelo CEP "09110170"
    Então vejo que o CEP pertence ao país "Brasil"
    E vejo que o CEP pertence ao estado "São Paulo"
    E vejo que o CEP pertence a cidade "Santo André"
    E vejo que o CEP pertence ao bairro "Vila America"
