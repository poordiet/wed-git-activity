class CreateOffices < ActiveRecord::Migration[6.0]
  def change
    create_table :offices do |t|
      t.string :room_num
      t.references :professor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
