class Event < ApplicationRecord
  has_and_belongs_to_many :users
  # :attendees, foreign_key "id", class_name: "User", source: :events_users
  has_one :creator, foreign_key: "id", class_name: "User"
end
