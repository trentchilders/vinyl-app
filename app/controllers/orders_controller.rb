class OrdersController < ApplicationController
  def create
    quantity = params[:quantity].to_i
    price = Record.find_by(id: params[:record_id]).price
    subtotal = quantity * price
    tax = subtotal * 0.09
    total = subtotal + tax
    order = Order.create(quantity: params[:quantity], user_id: current_user.id, record_id: params[:record_id], sub_total: subtotal, tax: tax, total: total)
    redirect_to "/orders/#{order.id}"
  end

  def show
    @order = Order.find_by(id: params[:id])
  end

end
