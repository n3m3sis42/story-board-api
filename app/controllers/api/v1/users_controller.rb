class Api::V1::UsersController < ApplicationController
  before_action :set_user, only: [:update, :show]
  skip_before_action :authorized, only: [:create]

  def create
    user = User.create(user_params)
    if user
      payload = {user_id: user.id}
      token = issue_token(payload)
      byebug
      render json: { jwt: token, user: { id: user.id, email: user.email } }
    else
      render json: {error: user.errors_full_messages, status: 400}
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
