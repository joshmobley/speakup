class VotesController < ApplicationController
  def create
    Vote.create(vote_params)
    redirect_to root_path
  end

private

  def vote_params
    params.require(:vote).permit(:idea_id)
  end
end
