class RoutinesController < ApplicationController
    skip_before_action :authorized, only: [:index, :show]
    before_action :find_routine, only: [:show, :edit, :update, :destroy]
    before_action :weekdays, only: [:new, :edit]
    
    def index
        @routines = Routine.all
    end

    def new
        @users = User.all
        @routine = Routine.new
    end

    def create
        @new_routine = @logged_in_user.routines.create(routine_params)
        # if @routine.valid?
        redirect_to routine_path(@new_routine)
        # end
    end
    
    def edit
        @users = User.all
    end
    
    def update
         @routine.update(routine_params)

         redirect_to routine_path(@routine)
    end

    def show
         #@routine = Routine.find(params[:id])
         @comment = Comment.new
         #for the add exercise (split) form
         @split = Split.new
         @exercises = Exercise.all
    end
    
    def destroy
        @routine.destroy
        redirect_to routines_path
    end

    def about 
        render :about
    end 

    private

    def find_routine
        @routine = Routine.find(params[:id])
    end

    def routine_params
        params.require(:routine).permit(:name, :weekday)
    end

    def weekdays
        @weekdays = ["Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday"]
    end

end

