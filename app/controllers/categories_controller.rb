class CategoriesController < ApplicationController
  def index
    @rubric = Rubric.find(params[:rubric_id]).order("published_at DESC")
    @category = Category.all
  end

  def new
    @rubric = Rubric.find(params[:rubric_id])
    @category = Category.new
  end

  def create
    @rubric = Rubric.find(params[:rubric_id])
    @category = @rubric.categories.new(category_params)

    if @category.save
      redirect_to @rubric
      flash[:notice] = "Criteria saved successfully."
    else
      redirect_to @rubric
      flash[:error] = "Criteria could not be saved."
    end
  end

  def show
    @rubric = Rubric.find(params[:rubric_id])
    @category = Category.find(params[:id])
    @criterium = Criterium.where(category_id: params[:id])

    # @comment = @post.comments.new
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def category_params
      params.require(:category).permit(:name, :description)
    end
end
