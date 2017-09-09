class Api::V1::UsersController < ApplicationController
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(user_params)
    if user && !user.errors.any?
      payload = {user_id: user.id}
      token = issue_token(payload)
      render json: { jwt: token, user: { id: user.id, email: user.email } }
    else
      render json: {error: user.errors.full_messages, status: 400}
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
