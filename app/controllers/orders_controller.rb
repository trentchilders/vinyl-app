class OrdersController < ApplicationController
  before_action :authenticate_user!

  def create
    cart = CartedProduct.where(status: 'carted')
    order = Order.create
    
    @subtotal = 0
    cart.each do |carted_product|
      @subtotal += carted_product.calculate_subtotal(carted_product.record.price)
    end

    tax = @subtotal * 0.09

    total = @subtotal + tax

    cart.update_all(order_id: order.id, status: "confirmed")
    Order.find_by(id: order.id).update(user_id: current_user.id, sub_total: @subtotal, tax: tax, total: total)
    


    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

end
