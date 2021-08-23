class CreateUserInvitations < ActiveRecord::Migration[6.0]
  def change
    create_table :user_invitations do |t|
      t.references :trip, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.boolean :status

      t.timestamps
    end
  end
end
