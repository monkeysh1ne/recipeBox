class Comment < ApplicationRecord
  belongs_to :recipe
  # the author_name must be provided
  validates :author_name, presence: { message: "Must be provided please" }, allow_blank: false
  validates :body, length: { minimum: 3, too_short: "Comment must be at least 3 characters long."}
end
