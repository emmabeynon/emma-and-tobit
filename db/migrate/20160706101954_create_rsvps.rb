class CreateRsvps < ActiveRecord::Migration[5.1]
  def change
    create_table :rsvps do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :rsvp
      t.text :dietary_requirements
      t.text :anything_else

      t.timestamps null: false
    end
  end
end
