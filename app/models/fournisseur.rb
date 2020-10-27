class Fournisseur < ApplicationRecord
  has_many :selections, dependent: :destroy
  has_many :products, through: :selections
  has_many :paiements

  validates :firstname, presence: true
  validates :lastname, presence: true
  validates :email, presence: true
  validates :rib, presence: false
end
