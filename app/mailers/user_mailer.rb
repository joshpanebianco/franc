class UserMailer < ApplicationMailer

  default from: "admin@franc.com"

  def welcome(user)
    @user = user
    @url = 'http://francjobs.herokuapp.com'
    mail( :to => @user.email, :subject => "Welcome to Franc!")
  end

  def new_application(user, job, application)
    @user = user
    @job = job
    @application = application
    @url = "http://francjobs.herokuapp.com"
    mail( :to => @user.email, :subject => "Thanks for creating your application with #{@job.company}")
  end

end
