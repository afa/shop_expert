class Admin::QuestionController < ApplicationController
 before_filter :get_questions, :only=>[:index]
 def index
 end

 protected
 def get_questions
  @questions = Question.all
 end
end
