class Rsvp < ActiveRecord::Base
  validates :first_name, :last_name, :email, :rsvp, presence: true
  validates :email, uniqueness: true
  validates :first_name, uniqueness: { scope: :last_name }
  validates :rsvp, inclusion: { in: %w(yes no) }
end
