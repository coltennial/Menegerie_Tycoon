class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :edit, :update, :destroy]

  def index
    @animals = current_zoo.animals 
  end

  def show
  end

  def new
    @animal = Animal.new 
  end

  def create 
    @animal = current_zoo.animals.new(animal_params)
    if @animal.save 
      flash[:success] = "- - Animal Has Been Captured - -"
      redirect_to animals_path
    else 
      flash[:error] = "!FAILED! Animal not captured. #{@animal.errors.full_messages.join("\n")}"
      render :new
    end
  end

  def edit
  end

  def update 
    if @animal.update(animal_params)
      redirect_to animals_path 
    else 
      render :edit
    end
  end 

  def destroy 
    @animal.destroy 
    redirect_to animals_path
  end

  private 

    def animal_params 
      params.require(:animal).permit(:name, :species, :age)
    end

    def set_animal 
      @animal = current_zoo.animals.find(params[:id])
    end

end
