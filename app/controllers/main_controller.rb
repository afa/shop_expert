class MainController < ApplicationController
  def index
   @answers = (session[:answers] || []).map{|i| Answer.find(i) }
   @question = Question.not_in(@answers.map(&:question).map(&:id)).by_random.first
  end

end
