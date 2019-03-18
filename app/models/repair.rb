class Repair < ApplicationRecord
  enum issue_type: [ :other, :no_electricity, :no_gas, :no_heating, :no_water, :smell_gas, :water_leak, :water_leak_electrics, :not_secure_access, :exposed_wiring, :alarm_beeping ]
  enum status: [ :reported, :in_progress, :done ]
end
