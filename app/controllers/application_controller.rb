# class ApplicationController < ActionController::API
# 	 def encode_token(payload)
#     # payload => { beef: 'steak' }
#     JWT.encode(payload, 'my_s3cr3t')
#     # jwt string: "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
#   end
 
#   def decoded_token(token)
#     # token => "eyJhbGciOiJIUzI1NiJ9.eyJiZWVmIjoic3RlYWsifQ._IBTHTLGX35ZJWTCcY30tLmwU9arwdpNVxtVU0NpAuI"
 
#     JWT.decode(token, 'my_s3cr3t')[0]
#     # JWT.decode => [{ "beef"=>"steak" }, { "alg"=>"HS256" }]
#     # [0] gives us the payload { "beef"=>"steak" }
#   end
# end

class ApplicationController < ActionController::API

 
  def encode_token(payload)
    # should store secret in env variable
    JWT.encode(payload, 'my_s3cr3t')
  end
 
  def auth_header
    # { Authorization: 'Bearer <token>' }
    request.headers['Authorization']
  end
 
  def decoded_token
    if auth_header
      token = auth_header.split(' ')[1]
      # header: { 'Authorization': 'Bearer <token>' }
      begin
        JWT.decode(token, 'my_s3cr3t', true, algorithm: 'HS256')
      rescue JWT::DecodeError
        nil
      end
    end
  end
 
  def current_investor
    if decoded_token
      investor_id = decoded_token[0]['investor_id']
      @investor = Investor.find_by(id: investor_id)
    end
  end
 
  def logged_in?
    !!current_investor
  end
 
  def authorized
    render json: { message: 'Please log in' }, status: :unauthorized unless logged_in?
  end
end