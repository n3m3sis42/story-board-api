# == Schema Information
#
# Table name: scenes
#
#  id         :integer          not null, primary key
#  title      :string
#  notes      :string
#  status     :string
#  x_coord    :integer
#  y_coord    :integer
#  project_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Scene < ApplicationRecord
  belongs_to :project
  has_many :scene_characters
  has_many :characters, through: :scene_characters  
end
