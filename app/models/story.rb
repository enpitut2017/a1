class Story < ApplicationRecord

  validates :name, presence: true, length: { maximum:20 }
  validates :content, presence: true

  belongs_to :category
  belongs_to :department

end
