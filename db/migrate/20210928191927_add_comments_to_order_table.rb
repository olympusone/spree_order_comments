class AddCommentsToOrderTable < ActiveRecord::Migration[6.1]
  def change
    add_column :spree_orders, :comments, :text
  end
end
