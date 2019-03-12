class Repair < ApplicationRecord
  belongs_to :property

  enum issue_type: [ :other, :no_electricity, :no_gas, :no_heating, :no_water, :smell_gas, :water_leak, :water_leak_electrics, :not_secure_access, :exposed_wiring, :alarm_beeping ]
end
