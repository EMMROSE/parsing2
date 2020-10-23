class SelectionsController < ApplicationController
  require 'date'

  def new
    @selection = Selection.new
  end

  def show
    @selection = Selection.find(params[:id])
    @fournisseur = @selection.fournisseur_id
  end

  def create
    @selection = Selection.new
    @selection.date = Date.today
    @selection.fournisseur = Fournisseur.find(params[:fournisseur_id])
    @selection.save
    redirect_to selection_path(@selection)
  end

  def edit
    @selection = Selection.find(params[:id])
  end

  private

  def selection_params
    params.require(:selection).permit(:date, :fournisseur_id)
  end
end


