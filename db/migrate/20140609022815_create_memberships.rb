class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |table|
      table.integer :user_id, null: false
      table.integer :meetup_id, null: false
      table.string :role, null: false, default: 'member'
    end

    add_index :memberships, [:user_id, :meetup_id], unique: true
  end
end
