class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :test, :about, :workshopArduino]

  def home
  end

  def about
  end

  def test
  end

  def workshopArduino
  end
end
