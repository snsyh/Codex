# == Schema Information
#
# Table name: event_sites
#
#  id                      :integer          not null, primary key
#  event_site_code         :string
#  prefecture_type_id      :string
#  name                    :string
#  near_station            :string
#  access_route            :string
#  host_comment            :string
#  carpark_type_id         :string
#  capacity                :integer
#  degrees_of_latitude     :string
#  degrees_of_longitude    :string
#  privately_owned_type_id :string
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  organization_id         :string
#
class EventSite < ActiveRecord::Base
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :organization
  belongs_to_active_hash :prefecture_type
  belongs_to_active_hash :carpark_type
  belongs_to_active_hash :privately_owned_type

  validates :event_site_code, presence: true, uniqueness: true, length: {maximum: 10}
  validates :prefecture_type_id, presence: true
  validates :name, presence: true
  validates :near_station, presence: true
  validates :access_route, presence: true
  validates :host_comment, presence: true
  validates :carpark_type_id, presence: true
  validates :capacity, presence: true
  validates :degrees_of_latitude, presence: true
  validates :degrees_of_longitude, presence: true
  validates :privately_owned_type_id, presence: true
  validates :organization_id, presence: true
  def prefecture_type_name
    PrefectureType::NAME[self.prefecture_type_id]
  end
end
