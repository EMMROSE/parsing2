class SelectionsController < ApplicationController
  def new
    @selection = Selection.new
  end

  def show
    @selection = Selection.find(params[:id])
  end

  def create
    @selection = Selection.new(selection_params)
    if @selection.save
      redirect_to selection_path
      flash[:notice] = "Votre produit a bien été enregistré."
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  def edit
    @selection = Selection.find(params[:id])
  end

  private

  def selection_params
    params.require(:selection).permit(:date, :fournisseur_id)
  end
end


