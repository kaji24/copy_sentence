class CopyController < ApplicationController

  def decide
    @candidate = Candidate.new(
      name: params[:name],
      address: params[:address]
    )
    if @candidate.save
      redirect_to("/")
    end
  end

  def sentence
    @candidate = Candidate.last
  end



end
