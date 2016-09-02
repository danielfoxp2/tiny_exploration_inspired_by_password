require 'net/http'
require 'json'

class BuscaRegiao 

  def self.do_cep(numero_do_cep)
    uri = URI('http://maps.google.com/maps/api/geocode/json?address=09110170&sensor=false')
    resposta = Net::HTTP.get_response(uri)
    resultado = JSON.parse(resposta.body)
    regiao = {}
    regiao[:pais] = resultado["results"][0]["address_components"][4]["long_name"].gsub("z", "s")
    regiao[:estado] = resultado["results"][0]["address_components"][3]["long_name"]
    regiao[:cidade] = resultado["results"][0]["address_components"][2]["long_name"]
    regiao[:bairro] = resultado["results"][0]["address_components"][1]["long_name"]
    regiao
  end

  #def dados_completos(numero_do_cep) 
    #dados = {:pais => "Brasil", :test => "daniel"}
    #dados
  #end

end
