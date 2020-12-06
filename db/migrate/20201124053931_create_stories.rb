class CreateStories < ActiveRecord::Migration[6.0]
  def change
    create_table :stories do |t|
      t.string :title
      t.string :html
      t.string :author
      t.datetime :newsletter_date
      # t.references :newsletter, null: false, foreign_key: true
      # t.references :newsletter, null: false, foreign_key: :newsletter_date 

      t.timestamps
    end
  end
end
