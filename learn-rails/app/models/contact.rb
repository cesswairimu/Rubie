class Contact < ApplicationRecord
  REGEX = /\A[-a-z0-9_+\.]+\@([-a-z0-9]+\.)+[a-z0-9]{2,4}\z/i
  validates :name, presence: true
  validates :email, presence:true, format: { with: REGEX }
  validates :content, presence:true
end
