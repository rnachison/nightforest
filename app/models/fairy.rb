class Fairy < ActiveRecord::Base

	validates_presence_of :realm

	belongs_to :user
end