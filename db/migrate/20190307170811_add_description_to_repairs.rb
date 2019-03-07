class AddDescriptionToRepairs < ActiveRecord::Migration[5.2]
  def change
    add_column :repairs, :description, :text
  end
end
