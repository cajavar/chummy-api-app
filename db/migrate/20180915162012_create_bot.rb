class CreateBot < ActiveRecord::Migration[5.2]
  def change
    create_table :bots do |t|
      t.string :token_face
      t.datetime :start_date
      t.datetime :end_date
    end
  end
end
