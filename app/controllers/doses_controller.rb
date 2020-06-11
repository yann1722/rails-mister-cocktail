class DosesController < ApplicationController
  def new
    @coktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
   @coktail = Cocktail.find(params[:cocktail_id])
   @dose = Dose.new(dose_params)
   @dose.cocktail = @cocktail
  if dose.save
    redirect_to cocktail_path(@coktail)
  else
    render "coktails/show"
  end
  end

  def destroy
  end


  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id)
  end

end
