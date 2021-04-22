class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.welcome.subject
  #
  def welcome(user)
      @user = user # Instance variable => available in view
      mail(to: user.email, subject: 'Welcome to Nessy Creativity Crafts')
      # This will render a view in `app/views/user_mailer`!
  end

  def confirmation(user)
      @user = user # Instance variable => available in view
      mail(to: user.email, subject: 'Thank you for adding your details')
      # This will render a view in `app/views/user_mailer`!
  end

end
 