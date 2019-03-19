class RepairUpdate < ApplicationRecord
  belongs_to :repair

  enum status: %i[reported in_progress done]
end
