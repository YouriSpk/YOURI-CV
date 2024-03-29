class Contact < MailForm::Base
  attribute :name, validate: true
  attribute :last_name, validate: true
  attribute :email, validate: true
  attribute :message

 def headers
    {
      subject: "My Contact Form",
      to: 'youri.soposki@gmail.com',
      from: %("#{name} #{last_name}" <#{email}>)
    }
  end
end
