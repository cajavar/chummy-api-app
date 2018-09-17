class CreateToken < ActiveRecord::Migration[5.2]
  def change
    create_table :tokens do |t|
      t.string :value
    end
  end
end
