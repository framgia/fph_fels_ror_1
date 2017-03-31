class CreateUserRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_roles do |t|
      t.belongs_to :user, index: true
      # t.references :user, foreign_key: true, null:false, on_cascade: delete
      t.references :role, foreign_key: true, null:false

      t.timestamps
    end
  end
end
