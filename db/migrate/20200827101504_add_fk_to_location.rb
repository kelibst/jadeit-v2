class AddFkToLocation < ActiveRecord::Migration[6.0]
  def change
    add_column :locations, :organization_id, :integer
    add_foreign_key :locations, :organizations
  end
end
