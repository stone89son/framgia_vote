class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :user
      t.references :canlidate
      t.references :award

      t.timestamps null: false
    end
  end
end
