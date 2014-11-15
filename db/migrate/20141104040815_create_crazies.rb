class CreateCrazies < ActiveRecord::Migration
  def change
    create_table :crazies do |t|
      t.integer :sleep
      t.boolean :late
      t.boolean :eat
      t.boolean :no_break
      t.boolean :exercise
      t.boolean :drunk
      t.boolean :callmom

      t.timestamps
    end
  end
end
