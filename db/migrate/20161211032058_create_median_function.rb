class CreateMedianFunction < ActiveRecord::Migration[5.0]
  def change
    create_table :median_functions do |t|
    end
  end

  def up
    ActiveMedian.create_function
  end

  def down
    ActiveMedian.drop_function
  end

end
