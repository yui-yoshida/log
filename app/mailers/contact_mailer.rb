class ContactMailer < ApplicationMailer
  def blog_mail(produce)
    @current_user = current_user
    @produce = produce
    mail to: @current_user.email, subject: "Smile作成確認メール"
  end
end
