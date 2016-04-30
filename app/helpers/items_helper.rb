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

module ItemsHelper
  def item_params
    params.require(:item).permit(:name, :description, :area_id)
  end
end
