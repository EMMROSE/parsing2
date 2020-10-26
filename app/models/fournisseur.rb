class Fournisseur < ApplicationRecord
  has_many :selections
  has_many :products, through: :selections

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :rib, presence: false
end
