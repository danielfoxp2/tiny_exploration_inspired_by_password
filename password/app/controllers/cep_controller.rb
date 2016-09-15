class CepController < ApplicationController
  def show 
    render :json => {pais: "Brasil", estado: "São Paulo", cidade: "Santo André", bairro: "Vila América"}
  end
end
