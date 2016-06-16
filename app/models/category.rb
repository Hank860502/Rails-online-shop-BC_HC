class Category < ActiveRecord::Base
  validates :name, presence: true

  has_many :products_categories
  has_many :products, through: :products_categories
end
