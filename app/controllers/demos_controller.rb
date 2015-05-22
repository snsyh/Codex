class DemosController < InheritedResources::Base
  def index
    @demos = Demo.cond_name(params[:name]).cond_title(params[:title]).cond_price(params[:price]).cond_prefecture(params[:prefecture_type_id]).page(params[:page]).decorate
    @items = ItemHeader.all
  end

  def timesupdate
    @time = Time.now.to_s
    render
#    render json: { status: 'success' }
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

  def demo_params
    params.require(:demo).permit(:name, :title, :price, :prefecture_type_id, :thumnail)
  end

end

