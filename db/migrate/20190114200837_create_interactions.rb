class CreateInteractions < ActiveRecord::Migration[5.2]
  def change
    create_table :interactions do |t|
      t.integer :user_one_id
      t.string :user_two_id
      t.string :integer
      t.boolean :like

      t.timestamps
    end
    add_foreign_key :interactions, :users, column: :user_one_id
    add_foreign_key :interactions, :users, column: :user_two_id
  end
end