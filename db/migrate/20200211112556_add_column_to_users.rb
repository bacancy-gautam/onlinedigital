class AddColumnToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :status, :boolean, default: true
    add_column :users, :mobile, :integer
  end
end
