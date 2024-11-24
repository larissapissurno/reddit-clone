class Post < ApplicationRecord
  belongs_to :account, class_name: "account", foreign_key: "account_id"
  belongs_to :community, class_name: "community", foreign_key: "community_id"
  validate_presence_of :title, :body, :account_id, :community_id
end
