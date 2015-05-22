module Cartkey
  def key(shop_code, item_code)
    shop_code + "-" + item_code
  end
  module_function :key
end
