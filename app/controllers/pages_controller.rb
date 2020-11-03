class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  # require 'open-uri'
  # require 'nokogiri'

  def home
    @fournisseurs = Fournisseur.all
    @selections = Selection.all
    @products = Product.all
  end

end
