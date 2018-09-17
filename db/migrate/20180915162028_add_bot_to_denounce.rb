class AddBotToDenounce < ActiveRecord::Migration[5.2]
  def change
    add_reference :denounces, :bot, foreign_key: true
  end
end
