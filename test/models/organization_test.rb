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

require 'test_helper'

class OrganizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
