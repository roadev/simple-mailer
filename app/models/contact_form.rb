class ContactForm
  include ActiveAttr::Model
  include ActiveAttr::TypecastedAttributes

  attribute :role, default: 'attendees'
  attribute :message
  attribute :subject
  attribute :gender
  attribute :accepted

  validates_presence_of :message, :role, :subject, :gender

  def send_it
    if valid?
      GenericMailer.send_common_email(self)
    end
  end
end
