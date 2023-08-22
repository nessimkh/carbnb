class UsersController < ApplicationController
  def article_params
    params.require(:avatar).permit(:title, :body, :photo)
  end
end
