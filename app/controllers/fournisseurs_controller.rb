class FournisseursController < ApplicationController
  # skip_before_action :authenticate_user!, only: :index
  def research
    if params[:query].present?
      @fournisseurs = Fournisseur.search_by_name_code(params[:query])
    else @fournisseurs = Fournisseur.all
    end
    if @fournisseurs.count == 0
      @fournisseurs = Fournisseur.all
    end
  end

  def index
    @fournisseurs = Fournisseur.all
  end

  def show
    @fournisseur = Fournisseur.find(params[:id])
    @selection = @fournisseur.selections
    @products = @selection.products
  end

  def new
    @fournisseur = Fournisseur.new
  end

  def create
    @fournisseur = Fournisseur.new(fournisseur_params)
    if @fournisseur.save
      redirect_to furnishers_path
      flash[:notice] = "Votre produit a bien été enregistré."
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  def edit
    @fournisseur = Fournisseur.find(params[:id])
  end

  def update
    @fournisseur = Fournisseur.find(params[:id])
    if @fournisseur.update(fournisseur_params)
      redirect_to fournisseur_path(@fournisseur)
    else render :edit
    end
  end

  def destroy
    @fournisseur = Fournisseur.find(params[:id])
    @fournisseur.destroy
    redirect_to fournisseurs_path
  end

  private

  def fournisseur_params
    params.require(:fournisseur).permit(:fullname, :code)
  end
  # Ne pas oublier de remettre photos: []
end
