class DailyWorkoutsController < ApplicationController
  def new
    @daily_workout = DailyWorkout.new
    @daily_workout.lifts.build
  end

  def create
    @daily_workout = DailyWorkout.create(daily_workout_params)
    if @daily_workout.save
      flash[:success] = "A daily Workout Was Created !"
      redirect_to root_path
    else
       render :new
    end
  end

  def monthly
  end

  

  private
  def daily_workout_params
    params.require(:daily_workout).permit(:focus, 
       lifts_attributes: %i[name sets reps])
  end
end
