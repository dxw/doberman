class Repair < ApplicationRecord
  belongs_to :property

  enum issue_type: [ :other, :no_electricity, :no_gas ]
end
