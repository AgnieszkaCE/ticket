class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :name
      t.time :time
      t.string :city

      t.timestamps null: false
    end
  end
end
