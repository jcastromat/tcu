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

module StudentsHelper

  def student_params
    params.require(:student).permit(:carnet, :firstName, :lastName, :project_id)
  end

end
