class Post < ApplicationRecord
  belongs_to :catagory
  
  has_one_attached :image
end
