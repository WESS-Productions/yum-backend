class AddFavsColumnToUsersAgain < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :favorites, :text, array: true, default: []
  end
end
