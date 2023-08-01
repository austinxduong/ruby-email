class UserMailer < ApplicationMailer
default from: "from@example.com"
layout "mailer"

def welcome_email
    @account = params[:account]
    @url  = 'http://example.com/login'
    mail(to: @account.email, subject: 'Welcome to My Awesome Site')
    end
end