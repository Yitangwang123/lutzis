class Contact < MailForm::Base
    attribute :name,      validate: true
    attribute :email,     validate: /\A[^@\s]+@[^@\s]+\z/i
    attribute :message,   validate: true
    attribute :product
    attribute :nickname,  captcha: true
  
    # Declare the e-mail headers. It accepts anything the mail method
    # in ActionMailer accepts.
    def headers
      {
        :subject => "Contact Form Inquiry",
        :to => "yitangwang0@gmail.com",
        :from => %("#{name}" <#{email}>)
      }
    end
  end