class Order < ApplicationRecord
  belongs_to :user
  has_many :orders, class_name: "order", foreign_key: "user_id"
end
