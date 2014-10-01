class CreateLessons < ActiveRecord::Migration
  def change
    create_table :lessons do |t|
      t.string :title
      t.text :objective
      t.text :warmup
      t.text :main
      t.text :homework
      t.belongs_to :user
      t.belongs_to :grade_level
      t.belongs_to :category

      t.timestamps
    end
  end
end
