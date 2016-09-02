#language: pt

Funcionalidade: Pesquisa CEPs
  Usuários podem encontrar informações relacionadas a um CEP

  Cenário: Usuário pesquisa por CEP
    Quando pesquiso pelo CEP "09110-175"
    Então vejo que o CEP pertence ao país "x"
    E vejo que o CEP pertence ao estado "x"
    E vejo que o CEP pertence a cidade "x"
    E vejo que o CEP pertence ao bairro "y"
