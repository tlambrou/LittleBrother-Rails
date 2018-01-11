class AddAncestryToCriterium < ActiveRecord::Migration[5.0]
  def self.up
    add_column :criteria, :ancestry, :string
    add_index :criteria, :ancestry
  end

  def self.down
    remove_index :criteria, :ancestry
    remove_column :criteria, :ancestry
  end
end
