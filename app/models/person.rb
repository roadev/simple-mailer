class Person
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :role, type: String, default: 'assistant'
  field :email, type: String
  field :gender, type: String
  field :register_date, type: Date
  field :birth_date, type: Date
  field :phone, type: String
  field :level, type: String
  field :motivation, type: String
  field :expectation, type: String
  field :heard_ror, type: String
  field :laptop, type: Boolean
  field :so, type: String
  field :attended, type: String
  field :how_did_you_find_it, type: String

  validates_presence_of :name, :role, :email
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  scope :by_role, lambda { |role| where(role: role) }
  scope :by_gender, lambda { |gender| where(gender: gender) }

  def first_name
    name.present? ? name.split(' ')[0].capitalize : ''
  end

end
