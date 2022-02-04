class CreateIncidents < ActiveRecord::Migration[6.1]
  def change
    create_table :incidents do |t|
      t.text :incident_number
      t.text :incident_type
      t.text :call_time
      t.text :closed_time
      t.text :vehicle
      t.text :unit
      t.text :neighbourhood
      t.text :ward

      t.timestamps
    end
  end
end
