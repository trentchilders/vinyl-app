class CartedProductsController < ApplicationController


  def create
    quantity = params[:quantity].to_i
    price = Record.find_by(id: params[:record_id]).price
    
    cart = CartedProduct.new(quantity: params[:quantity], user_id: current_user.id, record_id: params[:record_id], status: "carted")
    cart.save
    redirect_to "/records"
  end

  def index
    @user = User.find_by(id: current_user.id)
    @carted_records = @user.carted_products.where(status: 'carted')
    
    if @carted_records.empty?
      redirect_to '/'
      flash[:info] = "Your cart is empty"
    end

  end

  def destroy
    cart = CartedProduct.find_by(id: params[:id])
    cart.update(status: 'removed')
    redirect_to '/'
  end
end
