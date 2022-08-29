class CreatePeople < ActiveRecord::Migration[7.0]
  def change
    create_table :people do |t|
      t.string :firstname
      t.string :middlename
      t.string :surname
      t.string :lastname
      t.integer :age
      t.text :address
      t.integer :status
      t.integer :prog_languages
      t.integer :hobbies
      t.binary :photoImg

      t.timestamps
    end
  end
end
