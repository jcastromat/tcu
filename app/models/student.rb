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

class Student < ActiveRecord::Base
  validates :carnet, :firstName, :lastName, presence: true
  belongs_to :project
end
