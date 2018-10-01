class AuthController < ApplicationController
	skip_before_action :authorized, only: [:create]
 
  def create
    @investor = Investor.find_by(username: investor_login_params[:username])
    #User#authenticate comes from BCrypt
    if @investor && @investor.authenticate(investor_login_params[:password])
      # encode token comes from ApplicationController
      token = encode_token({ investor_id: @investor.id })
      render json: { investor: InvestorSerializer.new(@investor), jwt: token }, status: :accepted
    else
      render json: { message: 'Invalid username or password' }, status: :unauthorized
    end
  end
 
  private
 
  def investor_login_params
    # params { user: {username: 'Chandler Bing', password: 'hi' } }
    params.require(:investor).permit(:username, :password)
  end
end
