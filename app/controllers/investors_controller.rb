class InvestorsController < ApplicationController

	skip_before_action :authorized, only: [:create]

  # def create
  #   @investor = Investor.create(investor_params)
  #   if @investor.valid?
  #     render json: { investor: InvestorSerializer.new(@investor) }, status: :created
  #   else
  #     render json: { error: 'failed to create investor' }, status: :not_acceptable
  #   end
  # end

   def profile
    render json: { investor: InvestorSerializer.new(current_investor) }, status: :accepted
  end

    def create
    @investor = Investor.create(investor_params)
    if @investor.valid?
      @token = encode_token(investor_id: @investor.id)
      render json: { investor: InvestorSerializer.new(@investor), jwt: @token }, status: :created
    else
      render json: { error: 'failed to create investor' }, status: :not_acceptable
    end
  end

  	def index
        render json: Investor.all
    end
 
  private
  def investor_params
    params.require(:investor).permit(:name, :username, :password, :bio, :avatar, :investmentamount)
  end
end
