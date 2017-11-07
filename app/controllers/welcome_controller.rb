class WelcomeController < ApplicationController
  def index
  	@current_user = logged_in?
  end
end
