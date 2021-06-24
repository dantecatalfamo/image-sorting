# typed: false
# frozen_string_literal: true

class IndexController < ApplicationController
  def index
    lowest_matches = Image.minimum(:matches)
    @round = lowest_matches
    @remaining = Image.where.not(matches: lowest_matches).count
    @total = Image.count
    @img1, @img2 = Image.where(matches: lowest_matches).sample(2)

    if @img2 == nil
      @img2 = Image.all.where.not(id: @img1.id).sample
    end
  end

  def battle
    winner = Image.find(params[:winner])
    loser = Image.find(params[:loser])
    winner.beats(loser)
    
    redirect_to index_path
  end
end
