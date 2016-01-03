class CreateDroplets < ActiveRecord::Migration
  def change
    create_table :droplets do |t|
      t.string :description

      t.timestamps null: false
    end
  end
end
