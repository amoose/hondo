class HomeController < ApplicationController
	def index
    @search = Search.new
    @configuration ||= Tmdb::Configuration.new
	end
end
