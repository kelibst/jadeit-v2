class AddForeignkeyMockIdToHierachies < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :hierachies, :organizations, column: :mock_id  
  end
end
