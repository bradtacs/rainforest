class Product < ApplicationRecord
  validates :description, :name, preasene: true
  validates :price_in_cents, numericality: {only_integer: true}
end
