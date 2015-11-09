class VotesController < ApplicationController
  before_action :authenticate_user!

  def create
    canlidate = Canlidate.find params[:canlidate_id]
    award = canlidate.award
    vote = current_user.votes.where(award: award).first
    if vote
      vote.update_attributes(canlidate: canlidate)
    else
      current_user.votes.create(award: award, canlidate: canlidate)
    end
    redirect_to root_path
  end
end
