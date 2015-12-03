class ChangeCanlidateTables < ActiveRecord::Migration
  def change
    remove_column :canlidates, :start_date
    add_column :canlidates, :start, :string
  end
end
