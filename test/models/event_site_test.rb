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

require 'test_helper'

class EventSiteTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
