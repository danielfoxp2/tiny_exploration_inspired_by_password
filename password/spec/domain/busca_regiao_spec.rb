require_relative "../../lib/domain/busca_regiao"
require "vcr"
require_relative "../vcr_helper"

describe BuscaRegiao do
  #Na verdade é preciso dizer o que de fato essa classe faz.
  #Ela processa cep - dado um número válido
  #Processa cep - dado um número contendo hífen
  #Processa cep - dado um número contendo pontos
  #Processa um dado cep para busca


  context "com um número de CEP válido" do 
    around(:each) do |example|
      VCR.use_cassette("obtem_info_do_cep", &example)
      let(:regiao)
      regiao = BuscaRegiao.do_cep("09110170")
  end

    it "deve obter o País" do
    #  VCR.use_cassette('obtem_info_do_cep') do
        #regiao = BuscaRegiao.do_cep("09110170")
        expect(regiao[:pais]).to eq("Brasil")
    #  end
    end

    it "deve obter o Estado" do 
    #  VCR.use_cassette('obtem_info_do_cep') do
        #regiao = BuscaRegiao.do_cep("09110170")
        expect(regiao[:estado]).to eq("São Paulo")
    #  end
    end

    it "deve obter a Cidade" do
    #  VCR.use_cassette('obtem_info_do_cep') do
        #regiao = BuscaRegiao.do_cep("09110170")
        expect(regiao[:cidade]).to eq("Santo André")
    #  end
    end

    it "deve obter o Bairro" do
    #  VCR.use_cassette('obtem_info_do_cep') do
        #regiao = BuscaRegiao.do_cep("09110170")
        expect(regiao[:bairro]).to eq("Vila America")
    #  end
    end
  end
end
