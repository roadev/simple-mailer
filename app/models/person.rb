class Person
  include Mongoid::Document
  include Mongoid::Timestamps

  field :name, type: String
  field :role, type: String, default: 'assistant'
  field :email, type: String
  field :gender

  validates_presence_of :name, :role, :email
  validates_format_of :email, :with => /\A([\w\.%\+\-]+)@([\w\-]+\.)+([\w]{2,})\z/i

  scope :by_role, lambda{|role| where(role: role)}

  def first_name
    name.present? ? name.split(' ')[0].capitalize : ''
  end

end
