class CreateClass1s < ActiveRecord::Migration[6.0]
  def change
    create_table :class1s do |t|
      t.string :name
      t.string :number
      t.string :department

      t.timestamps
    end
  end
end
