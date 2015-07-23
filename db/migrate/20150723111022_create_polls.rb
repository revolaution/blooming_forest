class CreatePolls < ActiveRecord::Migration
  def change
    create_table :polls do |t|
      t.string :question

      t.references :category, index: true

      t.timestamps null: false
    end
  end
end
