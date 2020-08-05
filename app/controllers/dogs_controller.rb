class DogsController < ApplicationController
    
    def index
        @dogs = Dog.all
        render :index
    end

    def show
        id = params[:id]
        @dog = Dog.find(id)
        render :show 
    end



end
