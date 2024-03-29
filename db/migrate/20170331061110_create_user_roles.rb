class CreateUserRoles < ActiveRecord::Migration[5.0]
  def change
    create_table :user_roles do |t|
      t.belongs_to :user, index: true
      t.references :role, foreign_key: true

      t.timestamps
    end
  end
end
