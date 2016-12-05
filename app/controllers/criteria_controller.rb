class CriteriaController < ApplicationController
  def index
    @rubric = Rubric.find(params[:rubric_id]).order("published_at DESC")
    @criterium = Criterium.all
  end

  def new
    @rubric = Rubric.find(params[:rubric_id])
    @criterium = Criterium.new
  end

  def create
    @rubric = Rubric.find(params[:rubric_id])
    @criterium = @rubric.criteria.new(criterium_params)

    if @criterium.save
      redirect_to @rubric
      flash[:notice] = "Criteria saved successfully."
    else
      redirect_to @rubric
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
