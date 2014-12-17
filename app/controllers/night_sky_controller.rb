class NightSkyController < ApplicationController

	def exoplanets
		uri3 = HTTParty.get'http://www.asterank.com/api/kepler?query=%7B%7D&limit=1000'
		@exo = JSON.parse(uri3.body)
	end


end