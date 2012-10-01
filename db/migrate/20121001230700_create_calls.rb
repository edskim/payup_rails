class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :name
      t.integer :amount
      t.string :date

      t.timestamps
    end
  end
end
