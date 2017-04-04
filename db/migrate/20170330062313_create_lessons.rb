class CreateLessons < ActiveRecord::Migration[5.0]
  def change
    create_table :lessons do |t|
      t.integer :result
      t.belongs_to :user, index: true
      t.references :category, foreign_key: true

      t.timestamps
    end
  end
end
