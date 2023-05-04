class LinkCities < ActiveRecord::Migration[7.0]
  def change
    add_reference :dogs, :city, null: false, foreign_key: true
    add_reference :sitters, :city, null: false, foreign_key: true
  end
end
