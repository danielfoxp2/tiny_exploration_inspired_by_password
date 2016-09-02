Quando(/^pesquiso pelo CEP "([^"]*)"$/) do |numero_do_cep|
  @informacoes_do_cep = CEP.dados_completos(numero_do_cep)
end

Então(/^vejo que o CEP pertence ao país "([^"]*)"$/) do |arg1|
    pending # Write code here that turns the phrase above into concrete actions
end

Então(/^vejo que o CEP pertence ao estado "([^"]*)"$/) do |arg1|
    pending # Write code here that turns the phrase above into concrete actions
end

Então(/^vejo que o CEP pertence a cidade "([^"]*)"$/) do |arg1|
    pending # Write code here that turns the phrase above into concrete actions
end

Então(/^vejo que o CEP pertence ao bairro "([^"]*)"$/) do |arg1|
    pending # Write code here that turns the phrase above into concrete actions
end

