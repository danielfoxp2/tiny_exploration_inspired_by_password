require "rails_helper"

describe CepController, type: :controller do

  it "Obtém informações do cep" do
    allow(BuscaRegiao).to receive(:do_cep).and_return({:pais => "Brasil", :estado => "São Paulo", :cidade => "Santo André", :bairro => "Vila América"})
    get :show, params: {cep: "09110170"} 
    expect(response.body).to eq({:pais => "Brasil", :estado => "São Paulo", :cidade => "Santo André", :bairro => "Vila América"}.to_json)
  end
end
