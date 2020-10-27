class Selection < ApplicationRecord
  belongs_to :fournisseur
  has_many :products, dependent: :destroy
end
