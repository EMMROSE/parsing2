class ProductsController < ApplicationController
  def index
    # Status filter
    @products = @products.where(status: params[:status]) if params[:status].present?
    # FOURNISSEUR filter THROUGHT SELECTION ID ??
    @products = @products.selection.where(fournisseur: params[:fournisseur]) if params[:fournisseur].present?
    # # Size filter
    @products = @products.article.where(size: params[:size]) if params[:size].present?

    @products = Product.all
  end

  # def research
  #   if params[:query].present?
  #     @products = Product.search_by_name_sku(params[:query])
  #   else @products = Product.all
  #   end
  #   if @products.count == 0
  #     @products = Product.all
  #   end
  # end

  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
    @selection = Selection.find(params[:selection_id])
  end

  def create
    @product = Product.new(product_params)
    @selection = Selection.find(params[:selection_id])
    @product.selection = @selection
    if @product.save
      redirect_to selection_path(@selection)
      flash[:notice] = "Votre produit a bien été enregistré."
    else
      render :new
      flash[:alert] = "Veuillez compléter le formulaire s'il vous plaît."
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path(@product)
    else render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

  private

  def product_params
    params.require(:product).permit(:name, :brand, :size, :category, :price_cents, :selection_id)
  end
  # Ne pas oublier de remettre status par défault
end

