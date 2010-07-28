class Admin::QuestionController < ApplicationController
 before_filter :get_questions, :only=>[:index]
 before_filter :get_question, :only=>[:show, :edit, :update, :destroy]
 before_filter :new_question, :only=>[:new, :create]

 def index
 end

 def show
 end

 def new
 end

 def edit
 end

 def update
  if @question.update_attributes(params[:question])
   redirect_to admin_question_path(@question)
  else
   flash[:error] = 'error saving'
   render :action=>:edit
  end
 end

 def create
  if @question = Question.create(params[:question])
   redirect_to admin_question_path(@question)
  else
   flash[:error] = 'error saving'
   render :action=>:new
  end
 end
 protected
 def get_questions
  @questions = Question.all
 end

 def get_question
  @question = Question.find(params[:id])
 end

 def new_question
  @question = Question.new
 end
end
