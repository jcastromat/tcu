# == Schema Information
#
# Table name: projects
#
#  id         :integer          not null, primary key
#  code       :integer          not null
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Project < ActiveRecord::Base
  validates :code, :name, presence: true
  has_many :students, dependent: :destroy
end
