class CreateCourseSubs < ActiveRecord::Migration[5.1]
  def change
    create_table :course_subs do |t|
      t.string :course_code
      t.string :subject_id

      t.timestamps
    end
  end
end
