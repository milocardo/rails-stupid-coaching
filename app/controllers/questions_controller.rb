class QuestionsController < ApplicationController

  # ANSWERS = {
  #   1 => { coach_answer: "Great!", user_question: "I am going to work" },
  #   2 => { coach_answer: "Silly question, get dressed and go to work!", user_question: "contains?" },
  #   3 => { coach_answer: "I don't care, get dressed and go to work!", user_question: "nothing above" },
  # }

  def index
    @answers = Answer.all
  end

  def ask

  end

  def answer
    @question = params[:user_question]
    if @question == 'I am going to work'
      @answer = 'Great!'
    elsif @question.include?("?")
      @answer = 'Silly question, get dressed and go to work!'
    else
      @answer = "I don't care, get dressed and go to work!"
    end
    # @answers = params[:user_question]
  end
end
