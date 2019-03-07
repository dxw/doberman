class CreateRepairs < ActiveRecord::Migration[5.2]
  def change
    create_table :repairs do |t|
      t.integer :issue_type

      t.timestamps
    end
  end
end
