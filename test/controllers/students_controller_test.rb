# == Schema Information
#
# Table name: students
#
#  id         :integer          not null, primary key
#  carnet     :integer          not null
#  project_id :integer          not null
#  firstName  :string           not null
#  lastName   :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class StudentsControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
