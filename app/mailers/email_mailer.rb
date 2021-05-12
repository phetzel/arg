class EmailMailer < ApplicationMailer
    default from: 'from@example.com'

    def welcome_email(email)
        @email = email
        mail(to: @email.email, subject: 'Thanks for subscribing')
    end

end
