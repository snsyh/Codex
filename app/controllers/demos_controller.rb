class DemosController < InheritedResources::Base
  def index
    @front_search_condition = FrontSearchCondition.new(params)
    @items = ItemHeader.all
    @demos = Demo.cond_name(@front_search_condition.name).cond_title(@front_search_condition.title).cond_price(@front_search_condition.price).cond_prefecture(@front_search_condition.prefecture_type_id).page(params[:page]).decorate
  end

  def addcart
    itemheader = ItemHeader.where("shop_code = ? and item_code = ?", params[:shop_code], params[:item_code]).first
    cart_add(itemheader, 1)
    render :json => session[:cart]
  end

  def removecart
    cart_remove(params[:shop_code],params[:item_code])
    render :json => session[:cart]
  end

  def clearcart
    cart_clear
    render :json => session[:cart]
  end

  def ajax
    render :json => session[:cart]
  end

  private

end

