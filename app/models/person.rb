class Person
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  #field :rol, type: String, default: 'assistant'
  field :email, type: String
  field :gender
  field :event, type: Integer
  field :age, type: Integer
  field :company, type: String
  field :room, type: Integer
  #field :welcome_sent, type: Boolean, default: false

  validates_presence_of :name, :email, :event
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i
  #validates_format_of :event, with: /^(\d)+$/

  scope :by_event, lambda{|event| where(event: event)}
  scope :by_event_and_room, lambda{|event, room| where(event: event, room: room)}

  def first_name
    name.present? ? name.split(' ')[0].capitalize: ''
  end

end
