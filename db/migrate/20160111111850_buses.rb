class Buses < ActiveRecord::Migration
  def change
    create_table :buses do |t|
      t.string :name
      t.string :source
      t.string :dest
    end
  end
end
