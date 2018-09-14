class ContactMailer < ApplicationMailer
  def contact_mail(blog)
    @blog_user_email = blog.user.email
    @blog_content = blog.content
    mail to: @blog_user_email, subject: "Smile作成確認メール"
  end
end
