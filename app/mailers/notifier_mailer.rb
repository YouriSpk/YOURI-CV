class NotifierMailer < ApplicationMailer
  default to: "youri.soposki@gmail.com",
    from: "mailtrap@demomailtrap.com"

  def simple_message(first_name, last_name, email, message)
    mail(
      "reply-to": email_address_with_name(email, "#{first_name} #{last_name}"),
      subject: "New contact form message from API",
      body: message
    )
  end
end
