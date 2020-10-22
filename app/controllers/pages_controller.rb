class PagesController < ApplicationController
  # skip_before_action :authenticate_user!, only: [ :home ]
  # require 'open-uri'
  # require 'nokogiri'

  # def home
  #   @products = []
  #   @brands = []
  #   @names = []
  #   @prices =[]

  #   pages = (1..100).to_a
  #   pages.each do |page|
  #     url = "https://www.iletaitplusieursfois.com/vetements-enfant-occasion?page=#{page}"

  #     html_file = open(url).read
  #     html_doc = Nokogiri::HTML(html_file)
  #     html_doc.search('.Product-brand').each do |element|
  #       @brands << element.text.strip
  #       # puts element.attribute('href').value
  #     end
  #     html_doc.search('.Product-name').each do |element|
  #       @names << element.text.strip
  #       # puts element.attribute('href').value
  #     end
  #     html_doc.search('.Product-price').each do |element|
  #       @prices << element.text.strip
  #       # puts element.attribute('href').value
  #     end
  #   end
  #   @brands.each_with_index do |element, index|
  #     name = @names[index]
  #     price = @prices[index]
  #     sentence = "marque: #{element}, nom: #{name}, price: #{price}."
  #     # @products[i]["marque"] = "#{element}"
  #     # @products[i]["nom"] = @names[index]
  #     # @products[i]["price"] = @prices[index]
  #     @products << sentence
  #   end
  #   return @products
  # end

end
