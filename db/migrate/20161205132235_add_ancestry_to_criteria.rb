class AddAncestryToCriteria < ActiveRecord::Migration[5.0]
  def change
    add_column :criteria, :ancestry, :string
    add_index :criteria, :ancestry
  end
end
