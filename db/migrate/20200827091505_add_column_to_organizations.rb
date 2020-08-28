class AddColumnToOrganizations < ActiveRecord::Migration[6.0]
  def change
    add_column :organizations, :group_id, :integer
    add_foreign_key :organizations, :groups
  end
end
