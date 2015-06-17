class Category < ActiveRecord::Base
  has_many :categorized_products
  has_many :records, through: :categorized_products
end
