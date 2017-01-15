class CreateXpenses < ActiveRecord::Migration[5.0]
  def change
    create_table :xpenses do |t|
      t.string :name
      t.integer :amount

      t.timestamps
    end
  end
end
