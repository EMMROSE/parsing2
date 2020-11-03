class Product < ApplicationRecord
  belongs_to :selection

  monetize :price_cents

end
