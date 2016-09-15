class CepController < ApplicationController
  def show 
    informacoes_do_cep = BuscaRegiao.do_cep(params[:cep])
    render :json => informacoes_do_cep 
  end
end
