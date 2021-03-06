class SplitsController < ApplicationController

    def new
        @split = Split.new
        @routines = Routine.where({:user_id => @logged_in_user.id})
        @exercises = Exercise.all
    end

    def create
        @split = Split.create(split_params)
        redirect_to routine_path(split_params[:routine_id])
    end

    def edit
        @split = Split.find(params[:id])
        @routines = Routine.where({:user_id => @logged_in_user.id})
        @exercises = Exercise.all
    end

    def update
        @split = Split.find(params[:id])
        @split.update(split_params)
        redirect_to routine_path(split_params[:routine_id])
    end

    def destroy
        @split = Split.find(params[:id])
        @split.destroy
        redirect_to routine_path(@split.routine)
    end

    private 

    def split_params
        params.require(:split).permit(:routine_id, :exercise_id, :duration)
    end 

end
