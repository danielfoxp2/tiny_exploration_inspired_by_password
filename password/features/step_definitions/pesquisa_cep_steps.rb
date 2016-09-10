Quando(/^pesquiso pelo CEP "([^"]*)"$/) do |numero_do_cep|
  @informacoes_do_cep ||= {}
  @informacoes_do_cep = BuscaRegiao.do_cep(numero_do_cep)
end

Então(/^vejo que o CEP pertence ao país "([^"]*)"$/) do |pais|
  expect(@informacoes_do_cep.fetch(:pais)).to eq(pais)
end

Então(/^vejo que o CEP pertence ao estado "([^"]*)"$/) do |estado|
  expect(@informacoes_do_cep.fetch(:estado)).to eq(estado)
end

Então(/^vejo que o CEP pertence a cidade "([^"]*)"$/) do |cidade|
  expect(@informacoes_do_cep.fetch(:cidade)).to eq(cidade)
end

Então(/^vejo que o CEP pertence ao bairro "([^"]*)"$/) do |bairro|
  expect(@informacoes_do_cep.fetch(:bairro)).to eq(bairro)
end

