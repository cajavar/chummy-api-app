class CreateTeenager < ActiveRecord::Migration[5.2]
  def change
    create_table :teenagers do |t|
      t.integer :identification
      t.string :name
      t.string :location
      t.integer :telephone
      t.string :address
      t.string :id_facebook
      t.string :email
    end
  end
end
