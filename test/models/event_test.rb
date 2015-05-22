# == Schema Information
#
# Table name: events
#
#  id                        :integer          not null, primary key
#  organization_id           :string
#  event_site_id             :string
#  event_code                :string
#  categories_code           :string
#  name                      :string
#  event_comment             :string
#  represent_instructor_code :string
#  entry_fee                 :integer
#  event_start_datetime      :datetime
#  event_end_datetime        :datetime
#  event_post_start_datetime :datetime
#  event_post_end_datetime   :datetime
#  capacity                  :integer
#  number_of_accepted        :integer
#  male_available_type_id    :string
#  event_type_id             :string
#  target_month_old_from     :integer
#  target_month_old_to       :integer
#  reference_url             :string
#  reference_url_name        :string
#  belongings                :string
#  created_at                :datetime         not null
#  updated_at                :datetime         not null
#

require 'test_helper'

class EventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
