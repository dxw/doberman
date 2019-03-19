class RepairUpdate < ApplicationRecord
  belongs_to :repair

  enum status: %i[reported in_progress done]

  validates :status, presence: true
  validates :description, presence: true
  validates :repair_id, presence: true
end
