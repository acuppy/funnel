class UsersController < ApplicationController
  def show
    @user = user
    @submitter = Contact.new
    @notice = flash[:notice]
  end

  private

  def user
    User.find_by username: params.fetch(:username)
  end
end
