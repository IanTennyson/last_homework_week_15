class ProfilesController < ApplicationController

  def index 
    profile = current_user.profiles
    render :json => profile
  end

end