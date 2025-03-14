class ApplicationController < ActionController::API
  include Pundit  #SESSIONS AND APPLICATION NEED TO BE SAME VARIABLES FOR "USER_ID/USER"

  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

  def authorize_request
    header = request.headers['Authorization']
    token = header.split(' ').last if header

    begin
      decoded = JWT.decode(token, Rails.application.credentials.secret_key_base)[0]
      @current_owner = Owner.find(decoded['owner_id'])
    rescue ActiveRecord::RecordNotFound, JWT::DecodeError
      render json: { errors: 'Unauthorized' }, status: :unauthorized
    end
  end

  def current_owner
    @current_owner
  end

  private

  def user_not_authorized
    render json: { error: 'You are not authorized to perform this action.' }, status: :forbidden
  end

end
