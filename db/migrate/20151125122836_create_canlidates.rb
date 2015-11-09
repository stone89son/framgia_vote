class CreateCanlidates < ActiveRecord::Migration
  def change
    create_table :canlidates do |t|
      t.string :name
      t.text :description
      t.string :banner
      t.date :start_date
      t.integer :mark

      t.timestamps null: false
    end
  end
end
