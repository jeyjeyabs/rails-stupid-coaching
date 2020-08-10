class QuestionsController < ApplicationController
  def ask; end

  def answer
    @answers = ['Great', 'Silly question, get dressed and go to work!', 'I don\'t care, get dressed and go to work!']
    @coach_answer = if params[:question] == 'I am going to work'
                      @answers[0]
                    elsif params[:question].last == '?'
                      @answers[1]
                    else
                      @answers[2]
                    end
  end
end
