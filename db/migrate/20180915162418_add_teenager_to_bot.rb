class AddTeenagerToBot < ActiveRecord::Migration[5.2]
  def change
    add_reference :bots, :teenager, foreign_key: true
  end
end
