class DosesController < ApplicationController
  before_action :find, only: [:destroy]
  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose.cocktail = @cocktail # para associar a dose a um cocktail existente
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
    @dose.destroy
    redirect_to cocktails_path
  end

  private 

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

  def find
    @dose = Dose.find(params[:id])
  end 

end