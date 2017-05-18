class UserMailer < ApplicationMailer
  def password_information(user)
    @user = user
    mail to: user.email, subject: "Password Information"
  end
end
