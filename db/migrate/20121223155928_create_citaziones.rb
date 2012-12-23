class CreateCitaziones < ActiveRecord::Migration
  def change
    create_table :citaziones do |t|
      t.integer :id
      t.string :user
      t.datetime :date_time
      t.text :citazione

      t.timestamps
    end
  end
end
