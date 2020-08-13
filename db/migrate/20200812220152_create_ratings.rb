class CreateRatings < ActiveRecord::Migration[6.0]
  def change
    create_table :ratings do |t|
      t.decimal :value
      t.references :book, :user

      t.timestamps
    end
  end
end
