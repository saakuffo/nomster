class UsersController < ApplicationController
  before_action :authenticate_user!, only: [:show]

  def show
    # @user = current_user
    @user = User.find(params[:id])

    if @user != current_user
      return render text: 'Not Allowed', status: :forbidden
    end
  end
end
