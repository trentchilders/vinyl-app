class Order < ActiveRecord::Base
  belongs_to :user
  has_many :carted_products
  has_many :records, through: :carted_products

  validates :user_id, presence: true, numericality: true

  def calculate_subtotal(price)
    quantity * price
  end

  def calculate_tax(price)
    quantity * price * 0.09
  end

  def calculate_total(price)
    quantity * price * 1.09
  end
end
