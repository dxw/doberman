class Repair < ApplicationRecord
  enum issue_type: [ :no_electricity, :no_gas ]
end
