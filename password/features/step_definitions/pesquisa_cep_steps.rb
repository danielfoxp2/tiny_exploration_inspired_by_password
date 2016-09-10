Quando(/^pesquiso pelo CEP "([^"]*)"$/) do |numero_do_cep|
  @informacoes_do_cep ||= {}
  @informacoes_do_cep = BuscaRegiao.do_cep(numero_do_cep)
end

Então(/^vejo que o CEP pertence ao país "([^"]*)"$/) do |pais|
  expect(@informacoes_do_cep.fetch(:pais)).to eq(pais)
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

