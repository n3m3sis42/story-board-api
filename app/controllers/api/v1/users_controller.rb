class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(user_params)
    if user && !user.errors.any?
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { jwt: token, user: { id: user.id, email: user.email } }
    else
      error = user.errors.any? ? user.errors.full_messages.first : "Signup failed!"
      render json: { error: error }, status: :unauthorized
    end
  end

  def show
    render json: current_user
  end


  private

  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
