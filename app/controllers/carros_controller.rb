class CarrosController < ApplicationController
  def index
    @carros = Carro.all
  end

  def show
    @carro = Carro.find(params[:id])
  end

  def new
    @carro = Carro.new
  end

  def create
    @carro = Carro.new(carro_params)

    if @carro.save
      redirect_to @carro
    else
      render :new
    end
  end

  private

  def carro_params
    params.require(:carro).permit(:marca, :modelo, :ano, :descricao, :valor)
  end
end
