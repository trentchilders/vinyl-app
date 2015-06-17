class CartedProductsController < ApplicationController


  def create
    quantity = params[:quantity].to_i
    price = Record.find_by(id: params[:record_id]).price
    
    cart = CartedProduct.new(quantity: params[:quantity], user_id: current_user.id, record_id: params[:record_id], status: "carted")
    # order.sub_total = order.calculate_subtotal(price)
    # order.tax = order.calculate_tax(price)
    # order.total = order.calculate_total(price)
    # order.save
    cart.save
    redirect_to "/records"
  end

  def index
    @user = User.find_by(id: current_user.id)
    @carted_records = @user.carted_products.where(status: 'carted')
  end

  def destroy
    cart = CartedProduct.find_by(id: params[:id])
    cart.update(status: 'removed')
    redirect_to '/'
  end
end
