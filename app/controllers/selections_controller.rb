class SelectionsController < ApplicationController
  before_filter :authorize

  def base
    @user = User.find(session[:user_id])
    @answer = Answer.find_by_user_id(session[:user_id])
    @answer ||= Answer.new

  end

  def design
    @user = User.find(session[:user_id])
    redirect_to '/selections' if @user.update_attribute('portfolio', params[:portfolio])
  end

  def management
    @questions = Question.all
    @mcqs = Mcq.all
    @answer = Answer.new
    @answer = Answer.new
    @mcr = Mcr.new
  end

  def man_post
    Question.all.each do |q|
    answer = Answer.new(user_id: session[:user_id],question_id: q.id,response: params[q.id.to_s + '_resp'])
      answer.save!
    end
    Mcq.all.each do |q|
      mcr = Mcr.new(user_id: session[:user_id],mcq_id: q.id,response: params['mcr'])
      mcr.save!
    end

    redirect_to '/selections'
  end

  def technical
    @user = User.find(session[:user_id])
    redirect_to '/selections' if @user.update_attribute('repository', params[:repository])
  end

end
