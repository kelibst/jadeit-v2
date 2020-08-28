class FixColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :organizations, :type, :org_type;
  end
end
