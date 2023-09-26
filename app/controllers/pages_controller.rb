class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :test, :about]

  def home
  end

  def about
  end

  def test
  end
end
