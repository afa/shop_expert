class Admin::AnswerController < ApplicationController
 before_filter :get_question, :only=>[:new, :create]
 before_filter :get_answer, :only=>[:show, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
  end

  def create
   Answer.create params[:answer]
  end

 protected

 def get_question
  @question = Question.find(params[:question_id])
 end

 def get_answer
  @answer = Answer.find(params[:id])
 end
end
