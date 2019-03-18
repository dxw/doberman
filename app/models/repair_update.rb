class RepairUpdate < ApplicationRecord
  belongs_to :repair

  enum status: [ :reported, :in_progress, :done ]
end
