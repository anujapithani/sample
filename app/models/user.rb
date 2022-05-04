class User < ApplicationRecord
  validates_presence_of :email
  validates_uniqueness_of :email
  validates :name,format: { with: /\A[a-zA-Z]+\z/,
    message: "only allows letters" }, length: { in: 3..10 }
  validates :phno, presence: true, length: { is: 6 , short: "%{count} characters is the maximum allowed" }
end
