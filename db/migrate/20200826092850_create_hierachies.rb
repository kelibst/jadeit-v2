class CreateHierachies < ActiveRecord::Migration[6.0]
  def change
    create_table :hierachies do |t|
      t.references :organization, null: false, foreign_key: true
      t.references :child, index: true

      t.timestamps
      
    end
    add_foreign_key :hierachies, :organizations, column: :child_id
  end
end
