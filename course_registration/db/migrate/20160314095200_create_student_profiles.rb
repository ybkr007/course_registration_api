class CreateStudentProfiles < ActiveRecord::Migration
  def change
    create_table :student_profiles do |t|

      t.timestamps null: false
    end
  end
end
