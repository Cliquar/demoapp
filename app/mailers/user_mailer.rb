class UserMailer < ApplicationMailer
  default from: "info@sound-dc.com"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => "info@sound-dc.com",
      :subject => "A new contact form message from #{name}")
  end

  def welcome_email(user)
    mail(:to => user.email,
      :subject => "Welcome to BikeNuremberg!")
  end
end
