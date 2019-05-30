class Post < ApplicationRecord
  has_many :commets
  validates :title, presence: true, length: {minimum: 5}
end
