class ApplicationController < ActionController::API
  before_action :authenticate_token!

  def authenticate_token!
    check = JsonWebToken.decode(auth_token)
    @current_user = User.find(check["sub"])
  rescue JWT::ExpiredSignature
    render json: { errors: ["Expired auth token"]}, status: :unauthorized
  rescue JWT::DecodeError
    render json: { errors: ["Invalid auth token"] }, status: :unauthorized
  end

  def auth_token
    @auth_token ||= request.headers.fetch("Authorization", "").split(" ").last
  end
end
