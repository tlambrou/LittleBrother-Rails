class CreateCriteria < ActiveRecord::Migration[5.0]
  def change
    create_table :criteria do |t|
      t.string :name
      t.string :description
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
