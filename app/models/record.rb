class Record < ActiveRecord::Base
  belongs_to :supplier
  has_many :images
  has_many :orders
  has_many :categorized_products
  has_many :categories, through: :categorized_products
  has_many :carted_products
  has_many :orders, through: :carted_products

  validates :title, presence: true
  validates :artist, presence: true
  validates :price, presence: true, numericality: true
  validates :description, presence: true
   

  def friendly_updated_at
    updated_at.strftime('%B %d, %Y')
  end

  def sale_message
    if price.to_i < 2
      "Discount item"
    else
      "On Sale"
    end
  end

  def taxify
    price.to_i * 0.09
  end

  def totalify
   price.to_i + taxify
  end
end
