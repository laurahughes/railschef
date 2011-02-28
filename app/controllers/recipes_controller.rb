class RecipesController < ApplicationController
  def index
    @recipes = Recipe.all
    respond_to do |format|
      format.html # Send the page using HTML
      format.xml { render :xml => @recipes } #Send the page using XML
      format.atom
    end

  end

  def new
    @recipe= Recipe.new
  end

def create
  @recipe = Recipe.new(params[:recipe])
  if @recipe.save
  flash[:notice] = "Successfully created recipe."
  redirect_to root_url
else
  render :action => 'new'
  end
end

  def edit
	  @recipe= Recipe.find(params[:id])
  end

  def update
    @recipe= Recipe.find(params[:id])
    if @recipe.update_attributes(params[:recipe])
    flash[:notice] = "Your recipe was updated successfully!"
    redirect_to root_url
    else
    render :action => 'edit'
  end 
 end
   
  def show
	  @recipe= Recipe.find(params[:id])
  end

  def destroy
    @recipe= Recipe.find(params[:id])
    @recipe.destroy
    redirect_to root_url
   end
end
