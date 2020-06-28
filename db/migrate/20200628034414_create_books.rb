class CreateBooks < ActiveRecord::Migration[6.1]
  def change
    create_table :books, id: :uuid do |t|
      t.string :author
      t.string :title
      t.string :subtitle
      t.uuid :added_by_id

      t.timestamps
    end
  end
end
