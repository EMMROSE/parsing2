# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


puts 'Destroy all Clothes'
Clothe.destroy_all
puts 'Destroy all Brands'
Brand.destroy_all

array = ['10IS', 'Absorba', 'Alice', 'Arsène et les pipelettes', 'Benetton', 'Billieblush', 'Blune', 'Bonpoint', 'Bonton', 'Boutchou', 'Burberry', 'C&A', 'Carrément Beau', 'Catimini', 'CdeC', 'Chipie', 'Cyrillus', 'Dior', 'DPAM', 'Gap', 'Gocco', 'H&M', 'IKKS', 'Isabel Marant', 'Jacadi', 'Kiabi', 'Kickers', 'K-way', 'La Redoute', 'Le Bome', 'Levis', 'Lola Palacios', 'Louis Louise', 'Mango', 'Monoprix', 'Natalys', 'Noukies', 'Obaidi', 'Okaïdi', 'Orchestra', 'Oscar & Valentine', 'Oshkosh', 'Paul Smith', 'Petit Bateau', 'Ralph Lauren', 'Ronron', 'Sergent Major', 'Stella McCartney', 'TAO', 'Tape à l œil', 'Tartine & Chocolat', 'The Little White Company', 'Timberland', 'Vert Baudet', 'Zadig & Voltaire', 'Zara']
array2 = ['Bloomer', 'Bloomer Salopette', 'Blouse', 'Body', 'Chaussures', 'Chaussons', 'Chemise', 'Combinaison', 'Doudoune', 'Ensemble', 'Gilet', 'Haut Manches Longues', 'Jupe', 'Manteau', 'Pantalon', 'Pull', 'Pyjama', 'Robe', 'Salopette', 'Veste']


puts "CREATING BRANDS"
puts '----------------'
array.each do |element|
  x = Brand.new(name: element)
  x.save
end
puts '>>>>>> Done!'
puts '----------------'

puts "CREATING CLOTHES"
puts '----------------'
array2.each do |element|
  y = Clothe.new(name: element)
  y.save
end
puts '>>>>>> Done!'
puts '----------------'
