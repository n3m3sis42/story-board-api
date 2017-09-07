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
    self.scenes.map{|scene| { id: scene.id, coords: scene.coords }}
  end

  def build_api_data
    { project: self,
      scenes: {
        positions: self.scene_positions,
        characters: self.characters
      }
    }
  end

  def position_in_use(coords)
    self.scene_positions.find {|position| position[:coords] == coords}
  end

  # TODO
  #
  # write an instance method that returns the next available set of coords within the project (board? do i want a model for this?) to pass to the Draggable component on first render
  #
  # write another instance method that checks coords we are dragging to and returns an error (so we don't save the drag and card goes back to its previous location) if coords are in use


end
