class Event < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :creator, foreign_key: "creator_id", class_name: "User"
end
