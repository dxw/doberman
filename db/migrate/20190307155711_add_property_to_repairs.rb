class AddPropertyToRepairs < ActiveRecord::Migration[5.2]
  def change
    add_reference :repairs, :property, foreign_key: true
  end
end
