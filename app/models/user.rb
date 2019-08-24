class User < ApplicationRecord
  validates :username, :email, 
    presence: true, 
    uniqueness: true
  validates :password, 
    length: { in: 8..20 },
    format: { with: /\A
      (?=.{8,})          # Must contain 8 or more characters
      (?=.*\d)           # Must contain a digit
      (?=.*[a-z])        # Must contain a lower case character
      (?=.*[A-Z])        # Must contain an upper case character
      (?=.*[[:^alnum:]]) # Must contain a symbol
    /x }

  has_secure_password
  #optional: true funciona para que el campo no sea obligatiorio ingresarlo
  belongs_to :area
  belongs_to :role
  
  has_attached_file :avatar, styles: { thumb: ["32x32#", :png], default_url: "/images/:style/missing.png" }
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  validates_attachment_file_name :avatar, matches: [/png\z/, /jpe?g\z/]

  def self.from_token_request request
    username = request.params["auth"] && request.params["auth"]["username"]
    self.find_by username: username
  end
  def to_token_payload
  {
    sub: id,
    username: username,
    role_id: role_id,
  }
  end 
     
end
