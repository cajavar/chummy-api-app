class CreateTeenagerHistory < ActiveRecord::Migration[5.2]
  def change
    create_table :teenager_histories do |t|
      t.datetime :registry_date
      t.string :token
    end
  end
end
