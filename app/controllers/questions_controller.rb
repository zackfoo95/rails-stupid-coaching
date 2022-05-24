class QuestionsController < ApplicationController

  def ask

  end

  def answer
    @question = params[:questions]
    @answer = coach_answer(@question)
  end

  def coach_answer(question)
    if question.downcase == 'i am going to work!'
      ''
    elsif question.end_with?('?')
      'Silly question, get dressed and go to work!'
    else
      "I don't care, get dressed and go to work!"
    end
  end
end
