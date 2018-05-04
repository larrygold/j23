class User < ApplicationRecord
  has_many :created_events, class_name: 'Event', foreign_key: 'creator_id'

  has_many :event_users, foreign_key: 'attendee_id'

  has_many :events, through: :event_users, foreign_key: 'attendee_id'


end
