class CreateCriteria < ActiveRecord::Migration[5.0]
  def change
    create_table :criteria do |t|
      t.string :name
      t.text :description
      t.references :rubric, foreign_key: true

      t.timestamps
    end
  end
end
