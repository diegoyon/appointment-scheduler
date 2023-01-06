class Appointment < ApplicationRecord
  belongs_to :user, optional: true
  belongs_to :coach
end
