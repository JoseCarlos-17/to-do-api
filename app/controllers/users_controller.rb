# frozen_string_literal: true

# users_controller
class UsersController < ApplicationController
  def cancel_account
    @user = User.find(params[:id])

    User::CancelAccount.new(@user).call
  end

  def create
    user = User.create!(user_params)

    render json: user,
           serializer: Users::Create::UserSerializer,
           status: :created
  end

  private

  def user_params
    params.require(:user).permit(:name, :status)
  end
end
