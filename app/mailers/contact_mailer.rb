class ContactMailer < ApplicationMailer
  def contact_mail(contact)
    @contact = contact
    mail to: "yui.0618.kj8@gmail.com", subject: "お問い合わせの確認メール"
  end
end
