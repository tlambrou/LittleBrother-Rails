class RubricsController < ApplicationController

    def new
       @rubric = Rubric.new
    end

    def index
      @rubrics = Rubric.all
    end

    def create
      @rubric = Rubric.new(rubric_params)
      if @rubric.save
        redirect_to @rubric
        flash[:notice] = "New rubric saved successfully."
      else
        redirect_to @rubric
        flash[:error] = "New rubric could not be saved."
      end
    end

    def show
      @rubric = Rubric.find(params[:id])
    end

    private
      # Never trust parameters from the scary internet, only allow the white list through.
      def rubric_params
        params.require(:rubric).permit(:topic)
      end

end
