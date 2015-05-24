class DemosController < InheritedResources::Base
  def index
    @demos = Demo.cond_name(params[:sc][:name]).cond_title(params[:sc][:title]).cond_price(params[:sc][:price]).cond_prefecture(params[:sc][:prefecture_type_id]).page(params[:page]).decorate
    @items = ItemHeader.all
    @front_search_condition = FrontSearchCondition.new(params)
  end

  def timesupdate
    @time = Time.now.to_s
    render
  end

  def addcart
    itemheader = ItemHeader.where("shop_code = ? and item_code = ?", params[:sc], params[:ic]).first
    cart_add(itemheader, 1)
    redirect_to "/demos"
  end

  def removecart
    cart_remove(params[:sc],params[:ic])
    redirect_to "/demos"
  end

  def clearcart
    cart_clear
    redirect_to "/demos"
  end

  private

end

