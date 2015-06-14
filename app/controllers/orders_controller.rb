class OrdersController < ApplicationController
  def create
    quantity = params[:quantity].to_i
    price = Record.find_by(id: params[:record_id]).price
    
    order = Order.new(quantity: params[:quantity], user_id: current_user.id, record_id: params[:record_id],)
    order.sub_total = order.calculate_subtotal(price)
    order.tax = order.calculate_tax(price)
    order.total = order.calculate_total(price)
    order.save
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

end
