class CreateClassMeetings < ActiveRecord::Migration[5.2]
  def change
    create_table :class_meetings do |t|
      t.string :name
      t.string :student_id
      t.string :teacher_id
      t.datetime :start_time
      t.datetime :end_time

      t.timestamps
    end
  end
end
