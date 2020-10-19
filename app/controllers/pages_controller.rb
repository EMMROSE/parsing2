class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [ :home ]

  def home
    pages = (1..10).to_a
    pages.each do |page|
      url = "https://www.iletaitplusieursfois.com/vetements-garcon-occasion?page=#{page}"

      html_file = open(url).read
      html_doc = Nokogiri::HTML(html_file)

      html_doc.search('.Product-brand').each do |element|
        puts element.text.strip
        # puts element.attribute('href').value
      end
      html_doc.search('.Product-price').each do |element|
        puts element.text.strip
        # puts element.attribute('href').value
      end
    end
  end

end
