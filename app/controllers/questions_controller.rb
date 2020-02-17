class QuestionsController < ApplicationController
def ask
  @ask = params[:questions]
  end

  def answer
    @question = params[:questions]
    if @question == 'I am going to work'
      @answer = 'Great'
    elsif @question.blank?
      @answer = 'I can\'t hear you'
    elsif @question.ends_with?('?')
      @answer = 'Silly question, get dressed and go to work!'
    else @answer = 'I dont care, get dressed and go to work!'
    end
  end
end
