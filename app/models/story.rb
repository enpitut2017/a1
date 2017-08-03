class Story < ApplicationRecord
  belongs_to :category
  validates :name, presence: true, length: { maximum:20 }
  validates :content, presence: true

end
