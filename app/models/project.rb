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
  belongs_to :user

  def scene_positions
    self.scenes.map{|scene| { id: scene.id, coords: scene.coords }}
  end

  def build_api_data
    {
      project: self,
      scenes: self.scenes,
      characters: self.characters
    }
  end

  def position_in_use(coords)
    self.scene_positions.find {|position| position[:coords] == coords}
  end


end
