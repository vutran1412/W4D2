class CatsController < ApplicationController
    def index
        @cats = Cat.all
        render :index 
    end

    def show
        @cat = Cat.find_by(id: params[:id])
        if @cat
            render :show
        else
            redirect_to cats_url
        end
    end

    def new
        @colors = Cat::COLORS
        @cat = Cat.new
        render :create
    end

    def edit 
        @colors = Cat::COLORS
        @cat = Cat.find_by(id: params[:id])
        render :edit
    end

    private 
    def cat_params
        params.require(:cats).permit(:name, :birth_date, :sex, :description, :color)
    end
end
