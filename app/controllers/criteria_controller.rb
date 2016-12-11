class CriteriaController < ApplicationController
  def index
    @category = Category.find(params[:category_id]).order("published_at DESC")

    @criterium = Criterium.all
  end

  def new
    @category = Rubric.find(params[:category_id])
    @criterium = Criterium.new
  end

  def create
    @category = Category.find(params[:category_id])
    @criterium = @category.criteria.new(criterium_params)

    if @criterium.save
      redirect_to @category
      flash[:notice] = "Criteria saved successfully."
    else
      redirect_to @category
      flash[:error] = "Criteria could not be saved."
    end
  end

  def show

    @criterium = Criterium.find(params[:id])

    # @comment = @post.comments.new
  end

  private
    # Never trust parameters from the scary internet, only allow the white list through.
    def criterium_params
      params.require(:criterium).permit(:name, :description)
    end
end
