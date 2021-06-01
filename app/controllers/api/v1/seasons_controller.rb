module Api
	module V1
		class SeasonsController < ApiController
			def index
				@seasons = Season.all
			end

			def show
				@season = Season.find(params[:id])
			end
		end
	end
end
