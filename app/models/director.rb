# == Schema Information
#
# Table name: directors
#
#  id         :integer          not null, primary key
#  bio        :text
#  dob        :date
#  image      :string
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class Director < ApplicationRecord
  has_many :movies

  # def movies
  #   matching_movies = Movie.where({ :director_id => self.id })

  #   matching_movies.order({ :year => :asc })
  # end

  # scope :youngest, -> { where.not({ :dob => nil }).order({ :dob => :desc }).at(0) }

  def Director.youngest
    Director.where.not({ :dob => nil }).order({ :dob => :desc }).at(0)
  end

  def Director.eldest
    Director.where.not({ :dob => nil }).order({ :dob => :asc }).at(0)
  end
end
