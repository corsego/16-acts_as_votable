class Post < ApplicationRecord
  validates :title, presence: true

  acts_as_votable
  
  def to_s
    title
  end
end
