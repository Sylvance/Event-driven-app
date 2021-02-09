class CreateUserEventData < ActiveRecord::Migration[6.1]
  def change
    enable_extension 'hstore' unless extension_enabled?('hstore')

    create_table :user_event_data do |t|
      t.references :user, null: false, foreign_key: true
      t.integer :type, default: 0
      t.hstore :value, default: '', null: false

      t.timestamps
    end
  end
end
