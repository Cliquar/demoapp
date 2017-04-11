class UserMailer < ApplicationMailer
  default from: "postitherepls@aol.de"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => "postitherepls@aol.de",
      :subject => "A new contact form message from #{name}")
  end

  def welcome_email(user)
    mail(:to => user.email,
      :subject => "Welcome to BikeNuremberg!")
  end
end
