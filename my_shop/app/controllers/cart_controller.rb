class CartController < ApplicationController
  def index
    @cart = session[:cart] || {}
  end

  def add
    id = params[:id]
    #cart = session[:cart] || {}
    #cart = (cart[id] || 0) + 1
    session[:cart] = session[:cart] || {}
    cart = session[:cart]
    cart[id] = (cart[id] || 0) + 1

    redirect_to :action => :index
  end
end
