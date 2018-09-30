class HoldingsController < ApplicationController
	def index
        render json: Holding.includes(:stocks), include: ['stocks']
    end
end
