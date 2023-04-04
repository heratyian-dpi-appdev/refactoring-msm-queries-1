# == Schema Information
#
# Table name: actors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Actor < ApplicationRecord
  has_many :characters
  # def characters
  #   Character.where({ :actor_id => self.id })
  # end
  has_many :movies, through: :characters
  # def movies
  #   characters = Character.where({ :actor_id => self.id })
  #   movie_ids = characters.map_relation_to_array(:movie_id)
  #   Movie.where({ :id => movie_ids})
  # end
end
