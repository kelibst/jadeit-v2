class CreateHierachies < ActiveRecord::Migration[6.0]
  def change
    create_table :hierachies do |t|
      t.references :organization, null: false, foreign_key: true
      # t.references :mock, null: false, index: true

      t.timestamps
      # add_foreign_key :hierachies, :organizations, column: :mock_id
    end
  end
end
