class AddPsychologistToTeenager < ActiveRecord::Migration[5.2]
  def change
    add_reference :teenagers, :psychologist, foreign_key: true
  end
end
