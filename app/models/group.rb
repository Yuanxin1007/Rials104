class Group < ApplicationRecord
validates :title, presence: true
belongs_to :user
has_many :posts
has_many :group_relationships
has_many :members, though: :group_relationships, source: :user
end
