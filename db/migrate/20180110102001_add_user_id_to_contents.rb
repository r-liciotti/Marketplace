class AddUserIdToContents < ActiveRecord::Migration[5.1]
  def change
    add_column :contents, :user_id, :Integer
  end
end
