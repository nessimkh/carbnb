class UsersController < ApplicationController
  def article_params
    params.require(:avatar).permit(:title, :body, :avatar)
  end
end
