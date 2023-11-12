class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :test, :about, :online]

  def home
  end

  def about
  end

  def test
  end

  def online
  end
end
