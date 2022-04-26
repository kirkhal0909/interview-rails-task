class Post < ApplicationRecord
  validates :message, presence: true
  has_paper_trail
end
