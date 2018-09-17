class AddTokenToBot < ActiveRecord::Migration[5.2]
  def change
    add_reference :bots, :token, foreign_key: true
  end
end
