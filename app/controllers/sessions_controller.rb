class SessionsController < ApplicationController
  def create #SESSIONS AND APPLICATION NEED TO BE SAME VARIABLES FOR "USER_ID/USER"
    owner = Owner.find_by(email: params[:email])
    if owner && owner.authenticate(params[:password])
      token = JWT.encode({ owner_id: owner.id }, Rails.application.credentials.secret_key_base)
      render json: { jwt: token, owner: owner }, status: :created
    else
      render json: { error: 'Invalid email or password' }, status: :unauthorized
    end
  end
end
