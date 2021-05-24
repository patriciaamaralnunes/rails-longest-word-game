require 'set'

class GamesController < ApplicationController
  def new
    @letters = ('A'..'Z').to_a.sample(10)
  end

  def score
    letters = params[:letras].downcase.chars.to_set
    guess = params[:guess].downcase.chars.to_set
    guess.subset?(letters)
    if guess.subset?(letters)
      @message = "congrats"
    end
  end
end
