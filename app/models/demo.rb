# == Schema Information
#
# Table name: demos
#
#  id                 :integer          not null, primary key
#  name               :string
#  title              :string
#  price              :integer
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  prefecture_type_id :string
#  thumnail           :string
#
class Demo < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture_type
  mount_uploader :thumnail, ThumnailUploader

  scope :cond_name, -> name { where(name: name) if name.present?}
  scope :cond_title, -> title { where(title: title) if title.present?}
  scope :cond_price, -> price { where(price: price) if price.present?}
  scope :cond_prefecture, -> prefecture_type_id {where(prefecture_type_id: prefecture_type_id) if prefecture_type_id.present?}
  def prefecture_type_name
    PrefectureType::NAME[self.prefecture_type_id]
  end

  def region_name(prefecture_type)
    RegionArea.where(code: prefecture_type[:region_code])[0]
  end

  def prefecture_type_name
    PrefectureType::NAME[self.prefecture_type_id]
  end

end
