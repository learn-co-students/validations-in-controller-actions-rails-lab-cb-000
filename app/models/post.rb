class Post < ActiveRecord::Base
  # I am using active record to validate user input
#is invalid with no title
#is invalid when content is too short or too long
#is invalid if its not one of the predefined categories
#is invalid if not clickbait
validates :title, presence: true
validates :content, length: { minimum: 100 }
validates :category, inclusion: { in: %w(Fiction Non-Fiction) }
end
