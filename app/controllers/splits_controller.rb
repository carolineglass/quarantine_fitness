class SplitsController < ApplicationController
    def new
        @split = Split.new
        @routines = Routine.all
        @exercises = Exercise.all
    end

    def create
        @split = Split.create(allowed_params)
        redirect_to routines_path
    end

    private 

    def allowed_params
        params.require(:split).permit(:routine_id, :exercise_id, :duration)
    end 

end
