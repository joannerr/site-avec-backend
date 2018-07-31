class UsersControllerController < ApplicationController
  def new
  end

  def create
  	mon_user = User.new(username: params[:username], bio: params[:bio])
  	mon_user.save
  	if mon_user.new_record? == false && mon_user.valid?
		redirect_to "/users/#{mon_user.id}"
	else
		redirect_to "/erreur"
	end
  end

  def show
  	@id = params[:id]
  	@username = User.find(@id).username
  	@bio = User.find(@id).bio
  end

  def error
  end
end
