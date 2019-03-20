class AddEmailToRepairs < ActiveRecord::Migration[5.2]
  def change
    add_column :repairs, :email, :string
  end
end
