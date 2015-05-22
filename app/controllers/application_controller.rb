class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :init
  before_filter :initialized_cart

  private
  def init
    @prefectures = PrefectureType.all
  end

  def initialized_cart
    session[:cart] ||= []
  end

  def cart_add(item, amount)
    cartkey = Cartkey.key(item.shop_code, item.item_code)
    if session[:cart].assoc(cartkey) == nil
      cartitem = Cartitem.new(item, amount)
      session[:cart].push([cartitem.cart_key, cartitem])
    else
      session[:cart].assoc(cartkey)[1]["amount"] += amount
    end
  end

  def cart_remove(shop_code, item_code)
    session[:cart].delete(session[:cart].assoc(Cartkey.key(shop_code, item_code)))
  end

  def cart_clear()
    session[:cart]=[]
  end

end
