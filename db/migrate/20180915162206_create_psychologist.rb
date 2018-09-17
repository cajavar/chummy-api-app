class CreatePsychologist < ActiveRecord::Migration[5.2]
  def change
    create_table :psychologists do |t|
      t.integer :identification
      t.string :name
      t.string :location
      t.text :cv
      t.string :address
      t.integer :telephone
      t.string :id_facebook
      t.string :email
    end
  end
end
