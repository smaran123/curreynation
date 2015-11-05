class RecipesController < ApplicationController

  before_action :set_recipe, :except => [:index,:new,:create]
before_action :authenticate_user!, :except => [:index,:show]
  def index
    @recipes = Recipe.all
   # sidebar_values
  end

  def new
    @recipe = Recipe.new
  end

  def create
    @recipe = Recipe.new(recipe_params)
    if @recipe.save
      redirect_to recipes_path
    else
      render :new
    end
  end
  
  def edit
  end

  def update
    if @recipe.update(recipe_params)
      redirect_to recipes_path
    else
      render :edit
    end
  end



  def show
  end

  def destroy
   @recipe.destroy
   redirect_to recipes_path
 end

 private

 def set_recipe
  @recipe = Recipe.find(params[:id])
end

def recipe_params
  params.require(:recipe).permit!
end

end
