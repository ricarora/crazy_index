class AddSleepToCrazies < ActiveRecord::Migration
  def change
    change_column :crazies, :sleep, :string
  end
end
