class GeneralPartnersController < ApplicationController
	def index
        render json: GeneralPartner.includes(:holdings), include: ['holdings']
    end
end
