require 'net/http'
require 'json'

class BuscaRegiao 

  @regiao = {}

  def self.do_cep(numero_do_cep)
    o_pais = 4, o_estado = 3, a_cidade = 2, o_bairro = 1
    nas_informacoes_do_cep = busque_por(numero_do_cep)
    @regiao[:pais] = nas_informacoes_do_cep.fetch("results")[0].fetch("address_components")[4].fetch("long_name").gsub("z", "s")
    @regiao[:estado] = obtenha(o_estado, nas_informacoes_do_cep)
    @regiao[:cidade] = obtenha(a_cidade, nas_informacoes_do_cep)
    @regiao[:bairro] = obtenha(o_bairro, nas_informacoes_do_cep) 
    @regiao
  end

  def self.obtenha(regiao, nas_informacoes_do_cep)
    local = nas_informacoes_do_cep.fetch("results")[0].fetch("address_components")[regiao].fetch("long_name")
  end

  def self.busque_por(numero_do_cep)
    uri = URI('http://maps.google.com/maps/api/geocode/json?address=09110170&sensor=false')
    resposta = Net::HTTP.get_response(uri)
    resultado = JSON.parse(resposta.body)
    resultado
  end

end
