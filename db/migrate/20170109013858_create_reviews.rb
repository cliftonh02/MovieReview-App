class CreateReviews < ActiveRecord::Migration[5.0]
  def change
    create_table :reviews do |t|
      t.integer :raing
      t.text :description

      t.timestamps
    end
  end
end
