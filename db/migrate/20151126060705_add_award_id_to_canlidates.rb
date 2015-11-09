class AddAwardIdToCanlidates < ActiveRecord::Migration
  def change
    add_column :canlidates, :award_id, :integer
  end
end
