class HomeController < ApplicationController
  def index
    @user ||= User.new
    @main_award = Award.main
    @vice_award = Award.vice
  end
end
