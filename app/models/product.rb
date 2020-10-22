class Product < ApplicationRecord
  belongs_to :fournisseur

  monetize :price_cents
end
