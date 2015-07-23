class CreateChoices < ActiveRecord::Migration
  def change
    create_table :choices do |t|
      t.string :answer

      t.references :poll, index: true

      t.timestamps null: false
    end
  end
end
