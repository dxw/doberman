class AddNameAndAddressToRepairs < ActiveRecord::Migration[5.2]
  def change
    add_column :repairs, :name, :string
    add_column :repairs, :address, :text
  end
end
