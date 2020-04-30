class AddIndexToDogs < ActiveRecord::Migration[6.0]
  def change
    add_reference :dogs, :city, foreign_key: true
  end
end
