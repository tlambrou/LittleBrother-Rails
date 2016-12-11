class CreateCategories < ActiveRecord::Migration[5.0]
  def change
    create_table :categories do |t|
      t.string :name
      t.string :description
      t.references :rubric, foreign_key: true

      t.timestamps
    end
  end
end
