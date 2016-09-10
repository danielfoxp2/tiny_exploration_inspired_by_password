require_relative "../../lib/domain/busca_regiao"
require "vcr"
require_relative "../vcr_helper"

describe BuscaRegiao do
  #Talvez implementar o comportamento para lidar com CEP com hífen

  context "com um número de CEP válido" do 
    around(:each) do |example|
      VCR.use_cassette("obtem_info_do_cep", &example)
    end

    it "deve obter o País" do
      regiao = BuscaRegiao.do_cep("09110170")
      expect(regiao.fetch(:pais)).to eq("Brasil")
    end

    it "deve obter o Estado" do 
      regiao = BuscaRegiao.do_cep("09110170")
      expect(regiao.fetch(:estado)).to eq("São Paulo")
    end

    it "deve obter a Cidade" do
      regiao = BuscaRegiao.do_cep("09110170")
      expect(regiao.fetch(:cidade)).to eq("Santo André")
    end

    it "deve obter o Bairro" do
      regiao = BuscaRegiao.do_cep("09110170")
      expect(regiao.fetch(:bairro)).to eq("Vila America")
    end
  end
end
