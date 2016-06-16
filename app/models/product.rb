class Product < ActiveRecord::Base
  validates :name, :price, presence: true
  validates :price, numericality: true

  has_many :products_categories
  has_many :categories, through: :products_categories
end
