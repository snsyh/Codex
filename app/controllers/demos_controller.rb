class DemosController < InheritedResources::Base
  def index
    @front_search_condition = FrontSearchCondition.new(params)
    @items = ItemHeader.all
    @demos = Demo.cond_name(@front_search_condition.name).cond_title(@front_search_condition.title).cond_price(@front_search_condition.price).cond_prefecture(@front_search_condition.prefecture_type_id).page(params[:page]).decorate
  end

  def addcart
    itemheader = ItemHeader.where("shop_code = ? and item_code = ?", params[:shop_code], params[:item_code]).first
    cart_add(itemheader, 1)
    redirect_to "/demos"
  end

  def removecart
    cart_remove(params[:shop_code],params[:item_code])
    redirect_to "/demos"
  end

  def clearcart
    cart_clear
    redirect_to "/demos"
  end

  private

end

