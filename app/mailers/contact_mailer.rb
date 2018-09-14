class ContactMailer < ApplicationMailer
  def contact_mail(blog_user_email,blog_content)
    @blog_user_email = blog_user_email
    @blog_content = blog_content
    mail to: @blog_user_email, subject: "Smile作成確認メール"
  end
end
