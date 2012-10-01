class CreateCalls < ActiveRecord::Migration
  def change
    create_table :calls do |t|
      t.string :to
      t.string :to_number
      t.string :from_number
      t.integer :amount
      t.string :due_date

      t.timestamps
    end
  end
end
