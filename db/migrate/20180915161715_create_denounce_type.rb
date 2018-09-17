class CreateDenounceType < ActiveRecord::Migration[5.2]
  def change
    create_table :denounce_types do |t|
      t.string :title
    end
  end
end
