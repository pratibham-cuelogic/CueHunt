class AddColumnsToUsers < ActiveRecord::Migration
  def change
    add_column :users, :full_name, :string
    add_reference :users, :role, index: true
    add_column :users, :status, :boolean, default: true
    add_column :users, :invited_by, :integer, default: nil
    add_column :users, :phone_no, :string
  end
end
