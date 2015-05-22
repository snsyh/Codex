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

require 'test_helper'

class DemoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
