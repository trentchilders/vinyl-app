class CartedProduct < ActiveRecord::Base
  belongs_to :order
  belongs_to :user
  belongs_to :record

  validates :quantity, presence: true
  validates :quantity, numericality: { greater_than: 0  }
  validates :quantity, numericality: { only_integer: true }

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
