# == Schema Information
#
# Table name: players
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  matrix     :float
#  email      :string(255)
#  phone      :integer
#  photo      :text
#  club_id    :integer
#  created_at :datetime
#  updated_at :datetime
#

class Player < ActiveRecord::Base
	belongs_to :club
	has_and_belongs_to_many :teams
	has_many :matches
	has_many :outcomes, :through => :matches
end
