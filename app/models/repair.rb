class Repair < ApplicationRecord
  has_many :updates, class_name: 'RepairUpdate', dependent: :destroy

  enum issue_type: %i[
    other no_electricity no_gas no_heating no_water smell_gas water_leak
    water_leak_electrics not_secure_access exposed_wiring alarm_beeping
  ]

  validates :name, presence: true
  validates :address, presence: true
  validates :issue_type, presence: true
  validates :description, presence: true

  def status
    last_update = updates.last

    if last_update
      last_update.status
    else
      RepairUpdate.statuses.key 0
    end
  end
end
