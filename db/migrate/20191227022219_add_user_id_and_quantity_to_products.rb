class AddUserIdAndQuantityToProducts < ActiveRecord::Migration[6.0]
  def change
    add_reference :products, :user, foreign_key: true
    add_column :products, :quantity, :integer
  end
end

# $ rails g migration add_user_id_and_quantity_to_products user:references quantity:integer
