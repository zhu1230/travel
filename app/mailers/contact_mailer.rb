class ContactMailer < ActionMailer::Base
  default :from => "zhu1230@gmail.com",:subject => "messages from travel site."

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.contact_mailer.send_advice.subject
  #
  def send_advice(contact)
    @greeting = "Hi"
	@contact=contact
    mail :to => contact.email
  end
end
