class ContactForm
  include ActiveAttr::Model
  include ActiveAttr::TypecastedAttributes

  attribute :event
  attribute :room
  attribute :message
  attribute :subject
  #attribute :welcome, type: Boolean

  validates_presence_of :message, :event, :subject

  def send_it
    if valid?
      GenericMailer.send_common_email(self)
    end
  end
end
