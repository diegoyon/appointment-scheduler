class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.references :user, foreign_key: true
      t.references :coach, null: false, foreign_key: true
      t.string :time
      t.string :day

      t.timestamps
    end
  end
end
