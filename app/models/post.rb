class Post < ApplicationRecord
include Visible
has_many  :comments, dependent: :delete_all

# A string being required includes one non-white space character. 
validates :title, presence: true
validates :body, presence: true, length: {minimum: 2}

end
