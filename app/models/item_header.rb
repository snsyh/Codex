# == Schema Information
#
# Table name: item_headers
#
#  id         :integer          not null, primary key
#  shop_code  :string
#  item_code  :string
#  item_name  :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class ItemHeader < ActiveRecord::Base
end
