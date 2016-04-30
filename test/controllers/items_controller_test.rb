# == Schema Information
#
# Table name: items
#
#  id          :integer          not null, primary key
#  name        :string           not null
#  description :string           not null
#  area_id     :integer          not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class ItemsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
