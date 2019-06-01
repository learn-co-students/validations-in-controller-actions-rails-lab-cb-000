class Post < ActiveRecord::Base
  validates :title, presence: true # The title cannot be blank
  validates :category, inclusion: { in: %w( Fiction Non-Fiction ) } # cat is either fict or non-fict
  validates :content, length: { minimum: 100 }# The content is at least 100 characters long.
end
