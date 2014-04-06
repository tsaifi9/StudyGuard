class UserMailer < ActionMailer::Base
  default from: "studyguardx@gmail.com"

  def invite_user(email, group)
    @url  = group_url group
    mail(to: email, subject: "You've been invited to a new group!")
  end
end
