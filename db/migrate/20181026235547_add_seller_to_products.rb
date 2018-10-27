class AddSellerToProducts < ActiveRecord::Migration[5.2]
  def change
    add_column :products, :seller_id, :reference
    add_foreign_key :products, :users, column: :seller_id
  end
end
