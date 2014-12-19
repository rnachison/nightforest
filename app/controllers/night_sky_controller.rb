class NightSkyController < ApplicationController


	def index
	end

	def exoplanets
		uri3 = HTTParty.get'http://www.asterank.com/api/kepler?query=%7B%22TPLANET%22:%7B%22$gt%22:0%7D%7D&limit=1000'
		@exo = JSON.parse(uri3.body)
	end

	def about
	end

end