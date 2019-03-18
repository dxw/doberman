class Repair < ApplicationRecord
  has_many :updates, class_name: 'RepairUpdate'

  enum issue_type: [ :other, :no_electricity, :no_gas, :no_heating, :no_water, :smell_gas, :water_leak, :water_leak_electrics, :not_secure_access, :exposed_wiring, :alarm_beeping ]

  def status
    last_update = updates.last

    if last_update
      last_update.status
    else
      RepairUpdate.statuses.key 0
    end
  end
end
