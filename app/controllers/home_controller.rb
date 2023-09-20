class HomeController < ApplicationController
  def home
    @daily_workout = DailyWorkout.last
  end
end
