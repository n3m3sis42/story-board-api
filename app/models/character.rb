# == Schema Information
#
# Table name: characters
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  birthdate  :date
#  hometown   :string
#  likes      :string
#  dislikes   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Character < ApplicationRecord
  belongs_to :user
  has_many :scene_characters
  has_many :scenes, through: :scene_characters
end
