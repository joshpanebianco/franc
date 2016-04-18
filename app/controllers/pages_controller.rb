class PagesController < ApplicationController
  before_action :authorise, only: [:index]

  def index
  end

  private
  def authorise
    redirect_to login_path unless (@current_user.present?)
  end
end
