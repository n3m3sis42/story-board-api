# == Schema Information
#
# Table name: scenes
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scene < ApplicationRecord
end
