class CreateMigrations < ActiveRecord::Migration[6.1]
  def change
    create_table :migrations do |t|
      t.integer :day_id
      t.integer :new_day_id
      t.references :task, null: false, foreign_key: true

      t.timestamps
    end
  end
end
