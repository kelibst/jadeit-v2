class AddReferencesToHierachies < ActiveRecord::Migration[6.0]
  def change
    add_reference :hierachies,:mock, index:true
  end
end
