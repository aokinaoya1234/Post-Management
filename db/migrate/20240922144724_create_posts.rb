class CreatePosts < ActiveRecord::Migration[7.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end
