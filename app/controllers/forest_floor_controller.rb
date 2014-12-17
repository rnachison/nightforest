class ForestFloorController < ApplicationController

	def index
	end

	def asteroids
		uri1 = HTTParty.get'http://www.asterank.com/api/asterank?query=%7B%22H%22:%7B%22$gt%22:0%7D,%22diameter%22:%7B%22$lt%22:20%7D%7D&limit=1000'
		@fireflies = JSON.parse(uri1.body)
	end

end