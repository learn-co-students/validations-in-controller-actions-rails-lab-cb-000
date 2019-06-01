class Author < ActiveRecord::Base
  validates :name, presence: true # The name cannot be blank
  validates :email, uniqueness: true # The e-mail is unique
end
