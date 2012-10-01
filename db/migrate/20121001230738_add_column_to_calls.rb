class AddColumnToCalls < ActiveRecord::Migration
  def change
    add_column :calls, :requester, :string
  end
end
