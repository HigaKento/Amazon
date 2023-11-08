class CartItemsController < ApplicationController
  def new
    @cartitem=Cartitem.new
  end
  
  def create
    p_id=Product.find(params[:id])
    c_id=Cart.find(params[:id])
    cartitem=Cartitem.new(qty: params[:cartitem][:pty],product_id: params[:cartitem][p_id],cart_id: params[:user][c_id])
    cartitem.save
    redirect_to roots_path
  end
  
  def destroy
    Cartitem.find(params[:id]).destroy
    redirect_to roots_path
  end
end
