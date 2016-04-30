# == Schema Information
#
# Table name: areas
#
#  id         :integer          not null, primary key
#  name       :string           not null
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

module AreasHelper

    def area_params
      params.require(:area).permit(:name)
    end

end
