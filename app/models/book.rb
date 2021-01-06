class Book < ApplicationRecord

  belongs_to :user
  validates :title, uniqueness: true
  validates :body, presence: true, length:{ maximum:200 }

end
