class Comment < ActiveRecord::Base
  attr_accessible :body, :user_id, :created_at, :review_id, :public_name, :discussion_id
  belongs_to :discussion
  belongs_to :user

end
