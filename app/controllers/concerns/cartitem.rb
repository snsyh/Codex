class Cartitem
  attr_reader :cart_key, :shop_code, :item_code, :sku_code, :item_name, :price
  def initialize(item, amount)
    @cart_key=item.shop_code + "-" + item.item_code
    @shop_code=item.shop_code
    @item_code=item.item_code
    @sku_code=item.item_code
    @item_name=item.item_name
    @price=item.id
    @amount=amount
  end
end
