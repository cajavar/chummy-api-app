class AddTeenagerHistoryToTeenager < ActiveRecord::Migration[5.2]
  def change
    add_reference :teenagers, :teenager_history, foreign_key: true
  end
end
