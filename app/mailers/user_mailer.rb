class UserMailer < ApplicationMailer
  default from: "postitherepls@aaol.de"

  def contact_form(email, name, message)
    @message = message
    mail(:from => email,
      :to => "postitherepls@aol.de",
      :subject => "A new contact form message from #{name}")
  end
end
