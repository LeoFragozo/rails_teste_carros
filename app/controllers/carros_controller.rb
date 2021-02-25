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

  def edit
    @carro = Carro.find(params[:id])
  end

  def update
    @carro = Carro.find(params[:id])

    if @carro.update(carro_params)
      redirect_to @carro
    else
      render :edit
    end
  end

  def destroy
    @carro = Carro.find(params[:id])
    @carro.destroy

    redirect_to root_path
  end

  private

  def carro_params
    params.require(:carro).permit(:marca, :modelo, :ano, :descricao, :valor)
  end
end
