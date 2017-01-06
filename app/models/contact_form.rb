class ContactForm
  include ActiveAttr::Model
  include ActiveAttr::TypecastedAttributes

  attribute :role, default: 'attendees'
  attribute :message
  attribute :subject

  validates_presence_of :message, :role, :subject

  def send_it
    if valid?
      GenericMailer.send_common_email(self)
    end
  end
end
