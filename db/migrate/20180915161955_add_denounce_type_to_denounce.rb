class AddDenounceTypeToDenounce < ActiveRecord::Migration[5.2]
  def change
    add_reference :denounces, :denounce_type, foreign_key: true
  end
end
