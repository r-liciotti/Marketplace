class AddStateToSales < ActiveRecord::Migration[5.1]
  def change
    add_column :sales, :state, :string
    add_column :sales, :stripe_id, :string
    add_column :sales, :stripe_token, :string
    add_column :sales, :strpe_error, :text
  end
end
