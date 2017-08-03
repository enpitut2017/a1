class Story < ApplicationRecord
  
  validates :name, presence: true, length: { maximum:20 }
  validates :content, presence: true

end
