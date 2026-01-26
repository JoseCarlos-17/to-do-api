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

  def update
    user = User.find(params[:id])

    user.update!(user_params)

    head :no_content
  end

  def show
    user = User.find(params[:id])

    render json: user,
           serializer: Users::Show::UserSerializer,
           status: :ok
  end

  private

  def user_params
    params.require(:user).permit(:first_name, :status, :last_name)
  end
end
