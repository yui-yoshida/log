class ContactMailer < ApplicationMailer
  def contact_mail(blog)
    @blog = blog
    mail to: @blog.user.email, subject: "Smile作成確認メール"
  end
end
