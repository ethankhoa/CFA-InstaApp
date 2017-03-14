class Post < ApplicationRecord
  belongs_to :user
  acts_as_likeable

  mount_uploader :post_image, PostImageUploader


  validates :user_id, :description, presence: true

  # def find_hello
  #   self.where(description: 'hello')
  # end
end
