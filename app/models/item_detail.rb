# == Schema Information
#
# Table name: item_details
#
#  id         :integer          not null, primary key
#  shop_code  :string
#  item_code  :string
#  sku_code   :string
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemDetail < ActiveRecord::Base
end
