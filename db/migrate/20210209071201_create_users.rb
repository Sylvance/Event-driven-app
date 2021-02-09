class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, limit: 30
      t.string :email, limit: 30
      t.boolean :deleted, default: false
      t.text :bio

      t.timestamps
    end
    add_index :users, :email, unique: true
  end
end
