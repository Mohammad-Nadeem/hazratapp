class ExampleMailer < ActionMailer::Base
  default from: "nadeem42u@gmail.com"

  def sample_email(user)
    @user = user
    mail(to: @user.email, subject: @user.subject, message: @user.message)
  end
end