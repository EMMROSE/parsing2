class Selection < ApplicationRecord
  belongs_to :fournisseur
  has_many :products
end
