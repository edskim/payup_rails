class AddColumnToCallsTable < ActiveRecord::Migration
  def change
    add_column :calls, :number, :string
  end
end
