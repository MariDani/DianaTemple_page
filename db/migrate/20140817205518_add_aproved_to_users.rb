class AddAprovedToUsers < ActiveRecord::Migration
  def change
    add_column :users, :aproved, :boolean
  end
end
