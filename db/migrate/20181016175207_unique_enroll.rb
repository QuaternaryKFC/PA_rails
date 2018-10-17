class UniqueEnroll < ActiveRecord::Migration[5.1]
  def change
    add_index :enrollments, [:user_id, :course_code], unique: true
  end
end
