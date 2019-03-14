class AddFieldsToDoses < ActiveRecord::Migration[5.2]
  def change
    add_reference :doses, :ingredient, foreign_key: true
    add_column :doses, :description, :string
  end
end
