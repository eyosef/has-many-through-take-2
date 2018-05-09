class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post

  has_many :users
  accepts_nested_attributes_for :users

end
