class Post < ApplicationRecord
  belongs_to :group
  belongs_to :user
  validates :content, presence: true

  scope :rencent, -> {order("created_at DESC")}

end
