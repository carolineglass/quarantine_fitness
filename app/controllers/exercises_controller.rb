class ExercisesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]

    def index
        @exercises = Exercise.all
    end

    def show
        @exercise = Exercise.find(params[:id])
    end
end
