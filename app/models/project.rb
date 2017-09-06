# == Schema Information
#
# Table name: projects
#
#  id          :integer          not null, primary key
#  name        :string
#  description :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Project < ApplicationRecord
  has_many :scenes
  has_many :characters, through: :scenes

  def scene_positions
    self.scenes.map{|scene| { id: scene_id, coords: [scene.x_coord, scene.y_coord] }}
  end

  def build_api_data
    { project: self,
      scenes: {
        positions: self.scene_positions,
        characters: self.scene.characters
      }
    }
  end

end
