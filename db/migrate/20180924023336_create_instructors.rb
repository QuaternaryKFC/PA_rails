class CreateInstructors < ActiveRecord::Migration[5.1]
  def change
    create_table :instructors, id: false, primary_key: :id do |t|
      t.integer :id
      t.string :email
      t.string :first
      t.string :middle
      t.string :last

      t.timestamps
    end
  end
end
