# == Schema Information
#
# Table name: organizations
#
#  id                 :integer          not null, primary key
#  organization_code  :string
#  name               :string
#  delegate           :string
#  prefecture_type_id :string
#  tel                :string
#  email              :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#
class Organization < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :prefecture_type

  validates :organization_code, uniqueness: true
  validates :organization_code, length: {maximum: 10}
  validates :organization_code, presence: true, on: :update

end
