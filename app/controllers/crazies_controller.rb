class CraziesController < ApplicationController
  def index
    @crazies = Crazy.all
  end

  def new
    @crazy = Crazy.new
  end

  def create

    @crazy = Crazy.new(params.require(:crazy).permit(:sleep, :late, :eat, :no_break, :exercise, :drunk, :callmom))
    if @crazy.save
      redirect_to score_path(@crazy.id)
    else
      raise @crazy.late.inspect
      render :new
    end
  end

  def score
    @crazy = Crazy.find(params[:id])
    # set the crazy text here rather than call a method in the erb template?
  end
end
