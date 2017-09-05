# == Schema Information
#
# Table name: scene_characters
#
#  id           :integer          not null, primary key
#  scene_id     :integer
#  character_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class SceneCharacter < ApplicationRecord
  belongs_to :scene
  belongs_to :character
end
