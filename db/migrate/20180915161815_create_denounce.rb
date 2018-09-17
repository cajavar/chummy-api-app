class CreateDenounce < ActiveRecord::Migration[5.2]
  def change
    create_table :denounces do |t|
      t.text :facts
      t.text :observations
    end
  end
end
