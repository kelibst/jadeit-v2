class CreateGroups < ActiveRecord::Migration[6.0]
  def change
    create_table :groups do |t|
      t.string :name
      t.string :organization_code
      t.belongs_to :country, null: false, foreign_key: true

      t.timestamps
    end
  end
end
