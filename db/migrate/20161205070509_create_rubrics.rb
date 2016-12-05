class CreateRubrics < ActiveRecord::Migration[5.0]
  def change
    create_table :rubrics do |t|
      t.string :topic
      t.string :tags

      t.timestamps
    end
  end
end
