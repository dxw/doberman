class CreateRepairUpdates < ActiveRecord::Migration[5.2]
  def change
    remove_column :repairs, :status

    create_table :repair_updates do |t|
      t.integer :status
      t.text :description
      t.references :repair, foreign_key: true

      t.timestamps
    end
  end
end
