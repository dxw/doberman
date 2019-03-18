class RemoveProperties < ActiveRecord::Migration[5.2]
  def change
    remove_reference :repairs, :property

    drop_table :properties
  end
end
