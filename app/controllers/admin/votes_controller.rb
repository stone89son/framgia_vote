class Admin::VotesController < ApplicationController

  layout "admin_layout"
  http_basic_authenticate_with name: "FramgiaCore",
    password: "123@123a"

  def index
    @awards = Award.all
  end

end
