class Product < ApplicationRecord
  belongs_to :selection, optional: true

  monetize :price_cents

end
