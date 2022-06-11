class CreateRides < ActiveRecord::Migration[6.1]
  def change
    create_table :rides do |t|
      t.string :date
      t.belongs_to :passenger, foregin_key: true
      t.belongs_to :taxi, foregin_key: true
      t.timestamps
    end
  end
end
