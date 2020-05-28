class ExercisesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @exercises = Exercise.all
    end

    def show
        @exercise = Exercise.find(params[:id])
        if @logged_in_user
            @routines = Routine.where({:user_id => @logged_in_user.id})
            @split = Split.new
        end
    end

end
