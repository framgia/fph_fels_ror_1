class DashboardController < ApplicationController
  before_action :authenticate

  def index
    render 'dashboard/index'
  end
end
