class Admin::QuestionController < ApplicationController
 before_filter :get_questions, :only=>[:index]
 before_filter :get_question, :only=>[:show, :edit, :update, :destroy]

 def index
 end

 def show
 end

 def new
 end
 protected
 def get_questions
  @questions = Question.all
 end

 def get_question
  @question = Question.find(params[:id])
 end
end
