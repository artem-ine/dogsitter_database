class CreateStrolls < ActiveRecord::Migration[7.0]
  def change
    create_table :strolls do |t|
      t.belongs_to :sitter, null: false, index: true
      t.belongs_to :dog, null: false, index: true
      
      t.timestamps
    end
  end
end
