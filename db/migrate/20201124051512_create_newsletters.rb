class CreateNewsletters < ActiveRecord::Migration[6.0]
  def change
    create_table :newsletters do |t|
      t.string :author
      t.date :date
      t.string :html

      t.timestamps
    end
  end
end
