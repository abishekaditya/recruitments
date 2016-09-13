class SelectionsController < ApplicationController
  before_filter :authorize

  def base
    @user = User.find(session[:user_id])
    @answer = Answer.find_by_user_id(session[:user_id])
    @answer ||= Answer.new

  end

  def design

  end

  def des_post
    @user = User.find(session[:user_id])
    if @user.filled_port?
      redirect_to '/selections', :flash => {:error => "Submission already present"}
    else
      if @user.update_attribute('portfolio', params[:portfolio])
      redirect_to '/selections', :flash => {:success => "Submission completed"}
      end
    end
  end

  def management
    @questions = Question.all
    @mcqs = Mcq.all
    @answer = Answer.new
    @answer = Answer.new
    @mcr = Mcr.new
  end

  def man_post
    if Answer.find_by_user_id(session[:user_id]).nil?
      Question.all.each do |q|
      answer = Answer.new(user_id: session[:user_id],question_id: q.id,response: params[q.id.to_s + '_resp'])
        answer.save
      end
      Mcq.all.each do |q|
        mcr = Mcr.new(user_id: session[:user_id],mcq_id: q.id,response: params[q.id.to_s+"_mcr"])
        mcr.save
      end
      redirect_to '/selections', :flash => {:success => "Submission completed"}
    else
      redirect_to '/selections', :flash => {:error => "Submission already present"}
    end

  end

  def technical

  end

  def tech_post

    @user = User.find(session[:user_id])
    if @user.filled_repo?
      redirect_to '/selections', :flash => { :error => "Submission already done" }
    else
      if @user.update_attribute('repository', params[:repository])
        redirect_to '/selections', :flash => {:success => "Submission completed"}
      end
    end
  end

end
