class PicturesController < ApplicationController
	def index
		@pictures = Picture.all #[
		# 	{
		# 		:title => "The old church on the coast of White sea",
		# 		:artist => "Sergey Ershov",
		# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"

		# 		},
		# 	{
		# 		:title => "Sea Power",
		# 		:artist => "Stephen Scullion",
		# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
		# 	},
		# 	{
		# 		:title => "Into the Poppies",
		# 		:artist => "John Wilhelm",
		# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
		# 	}
		# ]
	end

	def show
		@picture = Picture.find(params[:id])#[
		# 	{
		# 		:title => "The old church on the coast of the White sea",
		# 		:artist => "Sergey Ershov",
		# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/house.jpg"

		# 	},
		# 	{
		# 		:title => "Sea Power",
		# 		:artist => "Stephen Scullion",
		# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/wave.jpg"
		# 	},
		# 	{
		# 		:title => "Into the Poppies",
		# 		:artist => "John Wilhelm",
		# 		:url => "http://monicao.s3.amazonaws.com/bitmaker/girl.jpg"
		# 	}
				
		# ]
		# @picture = @pictures[params[:id].to_i]
	end

	def new
		@picture = Picture.new
	end

	def create
		#make a new picture with what picture_params returns (which is a method we're calling)
		@picture = Picture.new(picture_params)
		if @picture.save
			#if the save for the picture was successful, go to index.html.erb
			redirect_to pictures_url
		else
			#otherwise render the view associated with the action :new (i.e. new.html.erb)
			render :new
		end
		# render :text => "Saving a picture. URL: #{params[:url]}, Title: #{params[:title]}, Artist: #{params[:artist]}"
	end

	private
	def picture_params
		params.require(:picture).permit(:artist, :title, :url)
	end
end