class VideosController < ApplicationController

	before_action :require_user, only: [:create]

	def index
		@videos = Video.all
		
	end

	def new
		@video = Video.new	
	end

	def create
		@video = Video.new(video_params)
			if @video.save
				redirect_to "/videos"
			else	
				render "new"
			end
	end

	private
		def video_params
			params.require(:video).permit(:source,:title,:description)
		end


end
