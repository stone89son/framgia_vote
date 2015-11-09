class CreateAwards < ActiveRecord::Migration
  def change
    create_table :awards do |t|
      t.string :name
      t.boolean :main_flg, default: false
      t.boolean :active_flg, default: false
      t.string :banner

      t.timestamps null: false
    end
  end
end
