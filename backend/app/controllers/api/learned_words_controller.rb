class Api::LearnedWordsController < ApplicationController

  def create
    @learned_word = LearnedWord.new(learned_word_params)

    if @learned_word.save
      render json: @learned_word
    else
      render json: {errors: @learned_word.errors.full_messages}, status: 422
    end
  end

  private
  def learned_word_params
    params.permit(:user_id, :word_id)
  end

end
