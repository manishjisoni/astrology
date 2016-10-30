class HomeController < ApplicationController

	def index
	  @slider_image=SliderImage.all
	end

	def about
	  @about_us = AboutU.all
	end


end


