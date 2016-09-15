class GenericMailer < ActionMailer::Base
  def self.send_common_email(contact_form)
    recipients = Person.by_event_and_room(contact_form.event, contact_form.room)
    recipients.each do |recipient|
      puts recipient.name
      common_email(recipient, contact_form).deliver_now!
      #recipient.update_attribute :welcome_sent, true
    end
  end

  def common_email(recipient, contact)
    @recipient = recipient
    @contact = contact
    email_provider = YAML.load(File.read("#{Rails.root}/config/email_provider.yml"))['development']
    mail(from: "#{email_provider['sender']} <#{email_provider['email']}>", to: @recipient.email, subject: @contact.subject)
  end
end
