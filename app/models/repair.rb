class Repair < ApplicationRecord
  belongs_to :property

  enum issue_type: [ :no_electricity, :no_gas ]
end
